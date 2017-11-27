import processing.video.*;
import java.util.Date;
long timestamp;
Capture webcam;

void setup() {
  size(640,480);
  webcam = new Capture(this,640,480);  
  webcam.start();
  String[] devices = Capture.list();
  println(devices);
  
}

void draw() {
  if (webcam.available() == true) {
    webcam.read();
    image(webcam ,0,0);
  }
  if (mousePressed == true) {
scatta();
//saveFrame("intere/test.png");
}
  
}



void scatta()
{
  
  Date date = new Date();
timestamp=(date.getTime());
println(timestamp);
saveFrame("intere/" + timestamp + ".jpg");
   PImage img = loadImage("intere/" + timestamp + ".jpg");
  
   image(img,0,0);
   PImage c = get();
   save("parte1/parte1.jpg");
   
   image(img,-400,-200);
   PImage d = get();
   save("parte2/parte2.jpg");
   
   image(img,0,-400);
   PImage e = get();
   save("parte3/parte3.jpg");
}