using System.Linq;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LevelManager : MonoBehaviour
{
    public List<GameObject> Circles;
    public static LevelManager Instance { get; private set; }

    private int childsCount;

    public List<GameObject> destroyedSectors = new List<GameObject>();

    public List<GameObject> meatBalledcircle = new List<GameObject>();

    private List<GameObject> Sectors = new List<GameObject>();

    /// <summary>
    /// Awake is called when the script instance is being loaded.
    /// </summary>
    void Awake()
    {
        if (Instance)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    void Start()
    {
        foreach (GameObject c in Circles)
        {
            childsCount = c.transform.childCount;
            if (childsCount > 1)
                for (int i = 0; i < childsCount - 2; i++)
                {
                    Sectors.Add(c.transform.GetChild(i).gameObject);
                }
        }
    }

    public List<GameObject> GetRandomsSectors(int quantity)
    {

        List<GameObject> listToreturn = new List<GameObject>();
        int randomIndex;

        for (int i = 0; i < quantity; i++)
        {
            randomIndex = Random.Range(0, Sectors.Count);
            if (!listToreturn.Contains(Sectors[randomIndex]))
            {
                listToreturn.Add(Sectors[randomIndex]);
            }
        }

        return listToreturn;
    }


    public GameObject GetRandomCircle()
    {
        GameObject circleToReturn = null;
        int randomIndex = Random.Range(0, Circles.Count);

        if (Circles[randomIndex])
        {
            circleToReturn = Circles[randomIndex];
        }

        return circleToReturn;
    }


    public GameObject GetSpecificCircle(int index)
    {
        GameObject circleToReturn = null;

        if (Circles[index])
        {
            circleToReturn = Circles[index];
        }

        return circleToReturn;
    }


    public List<GameObject> GetRandomsSectorsFromSpecificCircle(int circleIndex, int quantity)
    {

        List<GameObject> listToReturn = new List<GameObject>();
        int randomIndex;

        if (quantity > Circles[circleIndex].transform.childCount)
        {
            quantity = Circles[circleIndex].transform.childCount;
        }


        for (int i = 0; i < quantity; i++)
        {
            randomIndex = Random.Range(0, Circles[circleIndex].transform.childCount);
            if (!listToReturn.Contains(Circles[circleIndex].transform.GetChild(randomIndex).gameObject))
            {
                listToReturn.Add(Circles[circleIndex].transform.GetChild(randomIndex).gameObject);
            }
        }

        return listToReturn;
    }

    public List<GameObject> GetSpecificSectorsFromSpecifiCircles(int circleIndex, List<int> sectorsIndex)
    {

        List<GameObject> listToReturn = new List<GameObject>();

        foreach (int i in sectorsIndex)
        {
            listToReturn.Add(Circles[circleIndex].transform.GetChild(i).gameObject);
        }

        return listToReturn;
    }

    public List<GameObject> getAllCircles()
    {
        return Circles;
    }

    public List<GameObject> getAllSectors()
    {
        return Sectors;
    }

}
