﻿using UnityEngine;
using System.Collections;
using GooglePlayGames;
using UnityEngine.SocialPlatforms;

public class PlayerCharStats : MonoBehaviour
{
    private int score;
    public int Score { get { return score + (int)transform.position.x; } }

    [Header("Health")]
    public int currentHealth = 100;
    public int maxHealth = 100;

    [Space()]
    [Tooltip("How many second after dying until the player respawns.")]
    public float respawnTime = 1f;
    [Tooltip("How long after respawning until the player can assume control again.")]
    public float returnControlTime = 0.5f;
    private float nextControlTime = 0;

    [Header("Oxygen")]
    public int currentOxygen = 100;
    public int maxOxygen = 100;
    [HideInInspector]
    public int oldMaxOxygen;
    private int startOxygen;

    public delegate void Event();
    public event Event OnOxygenIncrease;
    public event Event OnReset;

    [Space()]
    [Tooltip("How much oxygen should be depleted per second.")]
    public int depletionRate = 1;

    [Space()]
    [Tooltip("The player will die if they fall below this height.")]
    public float minHeight = -20f;

    //Returns true if health and oxygen are above zero, false otherwise
    public bool IsAlive { get { return (currentHealth > 0 && currentOxygen > 0 && Time.time > nextControlTime) ? true : false; } }
    private bool hasAlreadyDied = false;

    [Space()]
    public Animator anim;
    public GameObject deathParticles;
    public GameObject playerMesh;

    private Vector3 initialPosition;

    private PlayerControl playerControl;

    private int nextScoreAchievement = 0;

    void Awake()
    {
        playerControl = GetComponent<PlayerControl>();
    }

    void Start()
    {
        //Cache initial position
        initialPosition = transform.position;

        startOxygen = maxOxygen;

        if (deathParticles)
            deathParticles.SetActive(false);

        StartCoroutine("DepleteOxygen");
    }

    void Update()
    {
        if (DebugInfo.displayDebugInfo)
        {
            DebugInfo.currentOxygen = currentOxygen;
            DebugInfo.maxOxygen = maxOxygen;
        }

        if (transform.position.y < minHeight)
            Die();

#if UNITY_ANDROID || UNITY_IOS
        if (Social.localUser.authenticated && Score >= nextScoreAchievement && nextScoreAchievement >= 0)
        {
            if (Score >= 3000)
            {
                PlayGamesPlatform.Instance.ReportProgress(GPGSIds.achievement_bronze_score, 100.0f, SubmittedAchievement);
                nextScoreAchievement = 5000;
            }
            if (Score >= 5000)
            {
                PlayGamesPlatform.Instance.ReportProgress(GPGSIds.achievement_silver_score, 100.0f, SubmittedAchievement);
                nextScoreAchievement = 10000;
            }
            if (Score >= 10000)
            {
                PlayGamesPlatform.Instance.ReportProgress(GPGSIds.achievement_gold_score, 100.0f, SubmittedAchievement);
                nextScoreAchievement = 20000;
            }
            if (Score >= 20000)
            {
                PlayGamesPlatform.Instance.ReportProgress(GPGSIds.achievement_diamond_score, 100.0f, SubmittedAchievement);
                nextScoreAchievement = 50000;
            }
            if (Score >= 50000)
            {
                PlayGamesPlatform.Instance.ReportProgress(GPGSIds.achievement_platinum_score, 100.0f, SubmittedAchievement);
                nextScoreAchievement = -1;
            }
        }
#endif
    }
    public void AddHealth(int amount)
    {
        //Remove specified amount of health
        currentHealth += amount;

        //Clamp
        if (currentHealth > maxHealth)
            currentHealth = maxHealth;
    }

    public void RemoveHealth(int amount)
    {
        //Remove specified amount of health
        currentHealth -= amount;

        //When health falls to or below zero
        if (currentHealth <= 0)
        {
            //Clamp it at zero
            currentHealth = 0;

            Die();
        }
    }

    public void AddOxygen(int amount)
    {
        //Remove specified amount of health
        currentOxygen += amount;

        //Clamp
        if (currentOxygen > maxOxygen)
            currentOxygen = maxOxygen;

        if (anim)
            anim.SetFloat("oxygen", (float)currentOxygen / maxOxygen);
    }

    public void RemoveOxygen(int amount)
    {
        //Remove specified amount of oxygen
        currentOxygen -= amount;

        //When oxygen falls to or below zero
        if (currentOxygen <= 0)
        {
            //Clamp it at zero
            currentOxygen = 0;

            Die();
        }

        if (anim)
            anim.SetFloat("oxygen", (float)currentOxygen / maxOxygen);
    }

    public void IncreaseOxygen(int amount, bool fillOxygen)
    {
        oldMaxOxygen = maxOxygen;
        maxOxygen += amount;

        //Call event handler
        if (OnOxygenIncrease != null)
            OnOxygenIncrease();

        if (fillOxygen)
            AddOxygen(maxOxygen);
        else
            AddOxygen(amount);
    }

    public void AddScore(int amount)
    {
        //Remove specified amount of health
        score += amount;
    }

    public void Die()
    {
        //Ensure the player does not die more than once before respawning
        if (!hasAlreadyDied)
        {
            hasAlreadyDied = true;

            //Play random death sound on death
            if (SoundManager.instance)
            {
                SoundManager.instance.PlaySound(SoundManager.instance.sounds.RandomDeath);
                SoundManager.instance.SetPlayerLoop(null);
            }

            if (deathParticles)
                deathParticles.SetActive(true);

            if (playerMesh)
                playerMesh.SetActive(false);

            //Start respawn countdown
            StartCoroutine("Respawn", respawnTime);

            //Save data
            float bestDistance = PlayerPrefs.GetFloat("BestDistance");

            if (transform.position.x > bestDistance)
                PlayerPrefs.SetFloat("BestDistance", transform.position.x);

            //Save high score
            if (Score > PlayerPrefs.GetInt("BestScore"))
            {
                PlayerPrefs.SetInt("BestScore", Score);
            }

#if UNITY_ANDROID || UNITY_IOS
            if (Social.localUser.authenticated)
            {
                Social.ReportScore(Score, GPGSIds.leaderboard_high_scores, SubmittedScore);
            }
#endif

            playerControl.PausePhysics();
        }
    }

    void SubmittedAchievement(bool success)
    {
        //Do stuff
    }

    void SubmittedScore(bool success)
    {
        //Do stuff
    }

    IEnumerator DepleteOxygen()
    {
        while (currentOxygen > 0)
        {
            yield return new WaitForSeconds(1/(float)depletionRate);

            //Only deplete oxygen if game is running
            if(GameManager.instance.IsGamePlaying && !GameManager.instance.IsGamePaused)
                RemoveOxygen(1);
        }
    }

    //Wait's the specified amount of time and then resets game values
    IEnumerator Respawn(float time)
    {
        yield return new WaitForSeconds(time);

        //Play death transition on main camera
        TransitionImageEffect effect = Camera.main.GetComponent<TransitionImageEffect>();
        if (effect)
        {
            effect.PlayTransition();

            yield return new WaitForSeconds(effect.transitionTime);
        }

        playerControl.ResumePhysics();

        //Reset position
        transform.position = initialPosition;

        //Reset stats
        currentHealth = maxHealth;
        maxOxygen = startOxygen;
        currentOxygen = maxOxygen;
        score = 0;

        if (deathParticles)
            deathParticles.SetActive(false);

        if (playerMesh)
            playerMesh.SetActive(true);

        //Start oxygen depletion (should have stopped when the player's oxygen reached 0)
        StopCoroutine("DepleteOxygen");
        StartCoroutine("DepleteOxygen");

        hasAlreadyDied = false;

        //Reset on all player monobehaviours
        SendMessage("Reset");

        //Stop game on respawn
        GameManager.instance.StopGame();
        GameManager.instance.ResetGame();

        nextControlTime = Time.time + returnControlTime;

        //Only reset after player has gained control
        yield return new WaitForSeconds(returnControlTime);
        //Invoke OnReset events
        if (OnReset != null)
            OnReset();

        GameManager.instance.canGameStart = true;
    }
}
