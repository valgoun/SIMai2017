using UnityEngine;
using UnityEditor;
using System.IO;
using Gameplay;

public static class ScriptableObjectUtility
{
    /// <summary>
    //	This makes it easy to create, name and place unique new ScriptableObject asset files.
    /// </summary>
    public static void CreateAsset<T>() where T : ScriptableObject
    {
        T asset = ScriptableObject.CreateInstance<T>();

        string path = AssetDatabase.GetAssetPath(Selection.activeObject);
        if (path == "")
        {
            path = "Assets";
        }
        else if (Path.GetExtension(path) != "")
        {
            path = path.Replace(Path.GetFileName(AssetDatabase.GetAssetPath(Selection.activeObject)), "");
        }

        string assetPathAndName = AssetDatabase.GenerateUniqueAssetPath(path + "/New " + typeof(T).ToString() + ".asset");

        AssetDatabase.CreateAsset(asset, assetPathAndName);

        AssetDatabase.SaveAssets();
        AssetDatabase.Refresh();
        EditorUtility.FocusProjectWindow();
        Selection.activeObject = asset;
    }

    [MenuItem("Assets/Create/Event/BoilingEvent")]
    public static void CreateBoilingEvent()
    {
        CreateAsset<BoilingEvent>();
    }

    [MenuItem("Assets/Create/Event/DebugEvent")]
    public static void CreateAssetDebugEvent()
    {
        CreateAsset<DebugEvent>();
    }

    [MenuItem("Assets/Create/Event/LadleEvent")]
    public static void CreateAssetLadleEvent()
    {
        CreateAsset<LadleEvent>();
    }
}