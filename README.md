# Touch of Life
An interactive art display that comes to life when you touch the pot, generating life to an invisible plant, capturing its shadow. Created using Processing 3 and Arduino, with a ton of love.

![](https://media.giphy.com/media/obSJS2VNskmoQhtlFU/giphy.gif)

## What you'll need
### Materials:
* Arduino
* Capacitive Touch Sensor
* A long wire
* A pot (preferably white)
* A projector

### Software:
* [ArduinoIDE](https://www.arduino.cc/en/software)
* [Processing 3](https://processing.org/download/)


## Installation
1. Connect a long wire to the Capacitive Sensor
2. Glue the long wire inside the pot in a spiral shape
![stuff](https://lh3.googleusercontent.com/xBGYfhS3qJJ-4bAPbj9OYKWu3yUC4mOGELXDib2RjNtOOzZjFuXrPJWX761VQEavKa5z6k6iFFrFSXGvMv6z9pI5s1k3iGfI8OCvnydrT3qsHKuzUB_NXT-t4_80xn1QG79bNsMxhRKuWNutKq9PyfjpxyZR9P02_WkiA4JGsDuYw45CFBIBBGNS6FZiGnynVvIyn9hesh6g5IpgRup4-PS3KAOEK8onJTX0t5Vx_l_OQxe0oJpmWlnjMWRBYKsaT7Dsunc8inuzw6tbxcw493I0VGbyWpl3jz6h3hcb81M8a98y1wf-y71ZQSpWpje4oo5f5mnwUcHpj_anNMlkxQzntCFEmfNYdbOhVeBzRuOSZXgRj6e99rZPdc4Fk-s22viygc7hwHmr_k_MC0DzWlxf-AEl3OBZ7rE5JOuZ2GsSqwaX9mXXmBkJX1FlVCQFuMHmRhpuQV1jZhnzK1nbYx6hyL3MJxS7_4zR1EmbS4h7Rn9DFdhxn4p2WAT86E6BZ6Y2CQ-kpE5rPnRCCy40kO3dePOBajOJG95wruD--2xGkyanFx2wO4PeX1Nfm5io4KkR9P8RxGfrvuN1NXdLMpAEYxtr3C-v9s9n2i_ig0WAcUn_VNDkWs87I6SdZ67YlqV0bsmJNHXZ3r3eJVnO1Dn0iNXf-ZlDwuxOWAAtk7JTt7ONjVnDMYo-_M-OEveLLiBMUKFVgErCcorPEb26d4HDIQ=w2000-h1126-no?authuser=0)
3. Connect the Touch Sensor to the Arduino 
4. Upload the ```conductive_touch.ino``` code to the Arduino
5. Open ```Processing_Arduino.pde``` with Processing 3
6. Make sure to set the port and the baud rate according to the Arduino IDE
```java
myPort  =  new Serial (this, "/dev/cu.usbmodem142101",  9600);
```
7. Press play to launch the program
8. You can put some dirt or sand inside the pot to hide the wire. Remember to cover the sensor with heat shrink or something.

## Future update
Connecting the Arduino straight to the computer can cause a lot of noise for the Touch Sensor, causing the video to play automatically. It is better to use a Bluetooth Module HC-05 to communicate with the Processing program to reduce noise and improve accuracy.

## Contributing
Recreating this project is highly encouraged. I would love to hear feedback and what can be done to improve this project.

## License
[MIT](https://choosealicense.com/licenses/mit/)
