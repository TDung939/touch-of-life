import processing.serial.*;
import processing.video.*;
Movie movie;
Serial myPort;
String val;
float myVal;

void setup ( ) {
  movie = new Movie(this, "mapping.mov");
  movie.loop();
  size(1920, 1080); // Size of the serial window, you can increase or decrease as you want
  myPort  =  new Serial (this, "/dev/cu.usbmodem142101",  9600); // Set the port and the baud rate according to the Arduino IDE
  myPort.bufferUntil ( '\n' ); // Receiving the data from the Arduino IDE
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
      if (myVal != 0) { // if the Pot is touched
        movie.play();
      } else {
        movie.pause();
      }
      image(movie, 0, 0, width, height);
    }
  } 
}
