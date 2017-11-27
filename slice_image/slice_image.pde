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
taglia();
//saveFrame("intere/test.png");
}
  
}



void taglia()
{
  //delay(100);
  
  Date date = new Date();
timestamp=(date.getTime());
println(timestamp);
saveFrame("intere/" + timestamp + ".jpg");

   PImage img = loadImage("intere/" + timestamp + ".jpg");
   //PImage img = loadImage("intere/test.jpg");
  
   image(img,0,0);
   PImage c = get(0,0, 640, 160);
   image(c, 0,0);
   save("parte1/"+ timestamp + ".jpg");
   
   image(img, 0,0 );
   PImage d = get(0, 160, 640, 160);
   image(d, 0, 160);
   save("parte2/"+ timestamp + ".jpg");
   
   image(img,0,0);
   PImage e = get(0, 320, 640, 160);
   //image(e, 0, 320);
   image(e, 0, 320);
   save("parte3/"+ timestamp + ".jpg");
   delay(5000);
   
}