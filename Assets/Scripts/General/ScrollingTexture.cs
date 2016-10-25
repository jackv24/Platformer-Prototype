﻿using UnityEngine;
using System.Collections;

public class ScrollingTexture : MonoBehaviour
{
    public Vector2 offsetDelta = new Vector2(1, 0);
    private Vector2 currentOffset;

    private Material mat;

    void Start()
    {
        mat = GetComponent<Renderer>().material;
    }

    void Update()
    {
        currentOffset += offsetDelta * Time.deltaTime;

        mat.SetTextureOffset("_MainTex", currentOffset);
        mat.SetTextureOffset("_EmissionMap", currentOffset);
    }
}
