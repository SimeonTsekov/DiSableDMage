﻿using System.Collections;
using System.Collections.Generic;
using Building;
using Building.Buildings;
using UnityEngine;
using User;

public class PreviewObj : MonoBehaviour
{

    private List<GameObject> obj = new List<GameObject>();//list of all buildings and walls the preview bumped into
    private List<GroundCube> cubes = new List<GroundCube>();//list of all the ground cubes the preview is sitting ontop of/notice this is a GroundCube type list not a gameobject list 

    public Material goodMat;//good material (green)
    public Material badMat;//bad material (red)
    public GameObject prefab;//---actual prefab

    private MeshRenderer _myRend;
    private bool _canBuild = false;


    private void Start()
    {
        _myRend = GetComponent<MeshRenderer>();
        ChangeColor();
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Building") || other.CompareTag("Wall"))//hit a building or a wall?...... 
        {
            obj.Add(other.gameObject);//then stick it in the obj list.....
        }

        if (other.CompareTag("GroundCube"))//hit a ground cube?.........
        {
            GroundCube gc = other.GetComponent<GroundCube>();//get the ground cube script that is sitting on this particular gameobject.....
            cubes.Add(gc);//add it to the ground cubes list....
            gc.HandleSelection();//toggle the selection color of this particular ground cube......
        }
        ChangeColor();//<----no check if the color should be green or red
    }

    //----this is the exact opposit of OnTriggerEnter
    private void OnTriggerExit(Collider other)
    {

        if (other.CompareTag("Building") || other.CompareTag("Wall"))
        {
            obj.Remove(other.gameObject);//----notice we're removing it from the list
        }

        if (other.CompareTag("GroundCube"))
        {
            GroundCube gc = other.GetComponent<GroundCube>();
            cubes.Remove(gc);//----removing it from the list
            gc.HandleSelection();
        }
        ChangeColor();
    }

    //Only concerned about the obj list (Buildings and Walls) if there is nothing in that list then we can build, if there is even 
    // 1 thing in the list then you cant build
    private void ChangeColor()
    {
        if(obj.Count == 0)//nothing in the list......
        {
            _myRend.material = goodMat;// change color to green
            _canBuild = true;//you can build
        }
        else//something is in the list.....
        {
            _myRend.material = badMat;//change to red
            _canBuild = false;//cant build
        }
    }

    public void Build()
    {
        foreach (var t in cubes)
        {
            t.HandleSelection();
        }

        Instantiate(prefab, transform.position, transform.rotation);
        Destroy(gameObject);//destroy the preview
    }

    public void BuildOnPosition(Vector3 position, Quaternion rotation)
    {
        Instantiate(prefab, position, rotation);
    }

    public bool CanBuild()//just returns the canBuild bool....this is so it cant accidently be changed by another script
    {
        return _canBuild;
    }

}
