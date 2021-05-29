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
![stuff](https://res.cloudinary.com/dpec7wjtk/image/upload/v1622266347/step_2_1_ykvxnp.jpg)
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
