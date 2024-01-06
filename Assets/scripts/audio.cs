using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Diagnostics;

public class audio : MonoBehaviour
{
    public AudioClip clip0;
        public TextMeshProUGUI countText;
    public GameObject winTextObject;
    private int count;
    public AudioSource source;
   
   public AudioClip clip;
    // Start is called before the first frame update
    void Start()
    {
        source.PlayOneShot(clip0);
        SetCountText();
    }


    void SetCountText()
        {
         countText.text = "Count: " + count.ToString(); //null reference exception
            if (count >= 6)
            {
                
                    
                    
                    source.PlayOneShot(clip);

                // Set the text value of your 'winText'
                    winTextObject.SetActive(true);

            }
        }
    // Update is called once per frame
    void Update()
    {
        SetCountText();
    }
}

