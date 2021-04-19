import processing.serial.*;    // Importing the serial library to communicate with the Arduino 
import processing.video.*;
Movie movie;
Serial myPort;      // Initializing a vairable named 'myPort' for serial communication
String val;
float myVal;
float background_color ;   // Variable for changing the background color

void setup ( ) {
  movie = new Movie(this, "mapping.mov");
  movie.loop();
  size(1920, 1080); // Size of the serial window, you can increase or decrease as you want
  myPort  =  new Serial (this, "/dev/cu.usbmodem142101",  9600); // Set the com port and the baud rate according to the Arduino IDE
  myPort.bufferUntil ( '\n' );
  // Receiving the data from the Arduino IDE
} 

void movieEvent(Movie m) {
  m.read();
}

void draw ( ) {
  if ( myPort.available() > 0) 
  {  // If data is available,
    val = myPort.readStringUntil('\n'); // read it and store it in val
    if (val != null) {
      myVal = float(val);
      if (myVal != 0) { // if the left mouse button is pressed
        movie.play();
      } else {
        movie.pause();
      }
      image(movie, 0, 0, width, height);
    }
  } 
}
