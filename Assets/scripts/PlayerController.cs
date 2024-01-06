using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;
using TMPro;
using Unity.VisualScripting;
using UnityEditor.SceneManagement;
using UnityEngine.Rendering;


public class PlayerController : MonoBehaviour
{
    public TextMeshProUGUI countText;
    public GameObject winTextObject;
public float speed = 0;
private Rigidbody rb; 
private int count;
private float movementX;
private float movementY;

public AudioSource source;
public AudioClip clip;



   

    // Start is called before the first frame update
    void Start()
    {
        
        rb = GetComponent<Rigidbody>();
        count = 0;
        
        // Set the text property of the Win Text UI to an empty string, making the 'You Win' (game over message) blank
                winTextObject.SetActive(false);
                  // Run the 'SetCountText()' function (see below)
			SetCountText();
    }

    private void OnMove(InputValue movementValue)
    {
        // function body
        Vector2 movementVector = movementValue.Get<Vector2>();

        movementX = movementVector.x;
        movementY = movementVector.y;
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
    void FixedUpdate()
    {
        Vector3 movement = new Vector3(movementX, 0.0f, movementY);
            
                    rb.AddForce(movement * speed);
    }
    void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.CompareTag("PickUp"))
        {
            other.gameObject.SetActive(false);
                count += 1;
                speed += 5;
               
            

            // Run the 'SetCountText()' function (see below)
             SetCountText();
        }
        
        
    
    
    }
  }



