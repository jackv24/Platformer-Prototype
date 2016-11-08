﻿using UnityEngine;
using System.Collections;

public class ItemPickup : MonoBehaviour
{
    public enum Type
    {
        Health,
        Oxygen,
        ExtraJump,
        ExtraOxygen
    }
    [Tooltip("The type of value to affect.")]
    public Type type;

    public int value = 0;

    public bool reset = false;

    public int pointsValue = 10;

    void OnTriggerEnter2D(Collider2D col)
    {
        PlayerStats stats = col.gameObject.GetComponent<PlayerStats>();
        PlayerControl control = col.gameObject.GetComponent<PlayerControl>();

        //If stats was gotten
        if (stats && control)
        {
            //Add stat based on type
            switch (type)
            {
                case Type.Health:
                    stats.AddHealth(value);
                    break;
                case Type.Oxygen:
                    stats.AddOxygen(value);
                    if (SoundManager.instance)
                        SoundManager.instance.PlaySound(SoundManager.instance.sounds.pickupOxygen);
                    break;
                case Type.ExtraJump:
                    control.AddJump(reset);
                    break;
                case Type.ExtraOxygen:
                    stats.IncreaseOxygen(value, reset);
                    break;
            }

            stats.AddScore(pointsValue);

            HUDControl.instance.ShowPickupText(pointsValue, transform.position);

            //Destroy gameobject so it has been "picked up"
            Destroy(gameObject);
        }
    }
}
