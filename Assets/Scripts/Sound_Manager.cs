using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sound_Manager : MonoBehaviour {

    public static Sound_Manager Instance { get; private set;}

    //Audisources
    [Header("Audisources")]
    public AudioSource Audio_Source_SFX;
    public AudioSource Audio_Source_Music;

    //Random sound pitch
    [Header("Soundpitch")]
    public float lowPitchRange = .95f;
    public float highPitchRange = 1.05f;

    //Mouvs
    [Header("Mouvs")]
    public AudioClip Sound_Mouv_Meat;
    public AudioClip Sound_Mouv_Cucumber;
    public AudioClip Sound_Mouv_Cheese;
    public AudioClip Sound_Mouv_Onion;
    public AudioClip Sound_Mouv_Dash;

    //Hits
    [Header("Hits")]
    public AudioClip Sound_Hit_Dash;
    public AudioClip Sound_Hit_Meatball;
    public AudioClip Sound_Hit_Stun;
    public AudioClip Sound_Hit_Pepper;

    //Death
    [Header("Death")]
    public AudioClip Sound_Death_Fly;
    public AudioClip Sound_Death_Cook;

    //Event
    [Header("Event")]
    public AudioClip Sound_Event_Fire;
    public AudioClip Sound_Event_Meatball;
    public AudioClip Sound_Event_Pepper;
    public AudioClip Sound_Event_Bubble;

    //UI
    [Header("UI")]
    public AudioClip Sound_UI_Eventpop;
    public AudioClip Sound_UI_Vote_Start;
    public AudioClip Sound_UI_Vote_Stop;
    public AudioClip Sound_UI_Win;
    public AudioClip Sound_UI_LooseStamp;
    public AudioClip Sound_UI_Button;

    //Music,Ambience
    [Header("Music,Ambience")]
    public AudioClip Sound_Ambience_Musique_IG;
    public AudioClip Sound_Ambience_Musique_MENU;
    public AudioClip Sound_Ambience_Musique_Loop;
    public AudioClip Sound_Ambience_HotPot;
    public AudioClip Sound_Ambience_PotDrop1;
    public AudioClip Sound_Ambience_PotDrop2;
    public AudioClip Sound_Ambience_PotDrop3;
    public AudioClip Sound_Ambience_PotDrop4;

    //INSTANCE:

    //----------------------------------------------------------------------------------------------------------------------------------------
    private void Awake()
    {
       if (Instance)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    //RANDOMSFX:
    //----------------------------------------------------------------------------------------------------------------------------------------
    public void RandomizeSfx(params AudioClip[] clips)
    {
        //Generate a random number between 0 and the length of our array of clips passed in.
        int randomIndex = Random.Range(0, clips.Length);

        //Choose a random pitch to play back our clip at between our high and low pitch ranges.
        float randomPitch = Random.Range(lowPitchRange, highPitchRange);

        //Set the pitch of the audio source to the randomly chosen pitch.
        Audio_Source_SFX.pitch = randomPitch;

        //Set the clip to the clip at our randomly chosen index.
        Audio_Source_SFX.clip = clips[randomIndex];

        //Play the clip.
        Audio_Source_SFX.Play();
    }

    //SOUND MANAGER:

    //++++++Mouvs++++++
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player1 (Meat)
    public void SFX_Mouv_Meat()
    {
        Audio_Source_SFX.clip = Sound_Mouv_Meat;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player2 (Cucumber)
    public void SFX_Mouv_Cucumber()
    {
        Audio_Source_SFX.clip = Sound_Mouv_Cucumber;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player3 (Onion)
    public void SFX_Mouv_Cheese()
    {
        Audio_Source_SFX.clip = Sound_Mouv_Cheese;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player4 (Cheese)
    public void SFX_Mouv_Onion()
    {
        Audio_Source_SFX.clip = Sound_Mouv_Onion;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Dash
    public void SFX_Mouv_Dash()
    {
        Audio_Source_SFX.clip = Sound_Mouv_Dash;
        Audio_Source_SFX.Play();
    }

    //++++++Hits++++++
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player hit by Dash
    public void SFX_Hit_Dash()
    {
        Audio_Source_SFX.clip = Sound_Hit_Dash;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player hit by meatball
    public void SFX_Hit_Meatball()
    {
        Audio_Source_SFX.clip = Sound_Hit_Meatball;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player Stun after hit
    public void SFX_Hit_Stun()
    {
        Audio_Source_SFX.clip = Sound_Hit_Stun;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player Stun by pepper
    public void SFX_Hit_Pepper()
    {
        Audio_Source_SFX.clip = Sound_Hit_Pepper;
        Audio_Source_SFX.Play();
    }

    //++++++Death++++++
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player aerial death
    public void SFX_Death_Fly()
    {
        Audio_Source_SFX.clip = Sound_Death_Fly;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player steaw death
    public void SFX_Death_Cook()
    {
        Audio_Source_SFX.clip = Sound_Death_Cook;
        Audio_Source_SFX.Play();
    }

    //++++++Event++++++
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Event fire
    public void SFX_Event_Fire()
    {
        Audio_Source_SFX.clip = Sound_Event_Fire;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Event Meatball
    public void SFX_Event_Meatball()
    {
        Audio_Source_SFX.clip = Sound_Event_Meatball;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Event Pepper drop
    public void SFX_Event_Pepper()
    {
        Audio_Source_SFX.clip = Sound_Event_Pepper;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Event bubbles
    public void SFX_Event_Bubble()
    {
        Audio_Source_SFX.clip = Sound_Event_Bubble;
        Audio_Source_SFX.Play();
    }

    //++++++UI++++++
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Incoming event
    public void SFX_UI_Eventpop()
    {
        Audio_Source_SFX.clip = Sound_UI_Eventpop;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Vote start for next event
    public void SFX_UI_Vote_Start()
    {
        Audio_Source_SFX.clip = Sound_UI_Vote_Start;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Vote stop for next event
    public void SFX_UI_Vote_Stop()
    {
        Audio_Source_SFX.clip = Sound_UI_Eventpop;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Win
    public void SFX_UI_Win()
    {
        Audio_Source_SFX.clip = Sound_UI_Win;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Player loose (Stamp)
    public void SFX_UI_LooseStamp()
    {
        Audio_Source_SFX.clip = Sound_UI_LooseStamp;
        Audio_Source_SFX.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Button selected
    public void SFX_UI_Button()
    {
        Audio_Source_SFX.clip = Sound_UI_Button;
        Audio_Source_SFX.Play();
    }

    
    //++++++Musique/Ambience++++++
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Game music
    public void MUSIQUE_Ambience_Musique_IG()
    {
        Audio_Source_Music.clip = Sound_Ambience_Musique_IG;
        Audio_Source_Music.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Game music loop
    public void MUSIQUE_Ambience_Musique_Loop()
    {
        Audio_Source_Music.clip = Sound_Ambience_Musique_Loop;
        Audio_Source_Music.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Game music
    public void MUSIQUE_Ambience_Musique_MENU()
    {
        Audio_Source_Music.clip = Sound_Ambience_Musique_MENU;
        Audio_Source_Music.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Continue ambience
    public void MUSIQUE_Ambience_HotPot()
    {
        Audio_Source_Music.clip = Sound_Ambience_HotPot;
        Audio_Source_Music.Play();
    }
    //----------------------------------------------------------------------------------------------------------------------------------------
    //Sound - Object drop in pot
    public void SFX_Ambience_PotDrop()
    {
        Audio_Source_SFX.clip = Sound_Ambience_PotDrop1;
        Audio_Source_SFX.clip = Sound_Ambience_PotDrop2;
        Audio_Source_SFX.clip = Sound_Ambience_PotDrop3;
        Audio_Source_SFX.clip = Sound_Ambience_PotDrop4;

        RandomizeSfx(Sound_Ambience_PotDrop1, Sound_Ambience_PotDrop2, Sound_Ambience_PotDrop3, Sound_Ambience_PotDrop4);
    }

}
