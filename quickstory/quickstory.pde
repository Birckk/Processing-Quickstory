boolean begin = false;

int updateRate=1; //units in msecs
int Time;

String story="";
String storydisplay="";
int textPosition=0;

void setup() { 
  size (600, 600, JAVA2D);
  surface.setTitle("Quickstory");
  
  story="I once took a walk down to the beach but ended up getting cold feet and went home again.";
  story+="The following day was filled with joy and amusement thinking back at the trip to the beach";
   
  story+="                                                                                                                                                              "; 
  story+="Lorem ipsum dolor sit amet, consectetur adipiscing elit. In porta sollicitudin purus eget maximus. Mauris pharetra semper metus eget sollicitudin. Etiam nec neque sit amet nisi tincidunt interdum ut in leo. In sed imperdiet tellus. Aenean et sapien mi. Aliquam pharetra lorem eget facilisis porttitor. Phasellus laoreet mattis orci ut pharetra. In hac habitasse platea dictumst. Nullam quis ligula et nibh vestibulum eleifend vel vel orci. Praesent augue neque, interdum eget accumsan scelerisque, pulvinar a augue. Ut vitae tellus imperdiet, mattis augue nec, ultricies augue. Quisque sed convallis est. Etiam laoreet ligula quis metus euismod auctor a vitae est. Cras congue, erat eu tempus tincidunt, leo quam tempus felis, ac fringilla justo dui eu ex. Pellentesque non egestas dui. In ut nisl turpis. Ut dictum porta elit, ac cursus quam scelerisque vel. In hac habitasse platea dictumst. Aliquam non neque sit amet erat porta faucibus ac non magna. Proin libero dui, dignissim non ultrices eu, sollicitudin quis dui. Pellentesque ut mollis purus, nec porta augue. Aliquam erat volutpat. Nulla imperdiet nisi nibh, eu pulvinar odio sollicitudin nec. Curabitur nisi neque, ultricies eget enim sed, volutpat pretium tellus. Morbi egestas fringilla erat vulputate semper."; 
   }


void draw() { 
  background(0,0,0);
 
  if (!begin){
  textAlign(CENTER);text("Press S to start", 300, 300); textAlign(LEFT); 
  
  }
  else if (begin) {text("Press E to pause", 20, 30);}
  if (begin && millis()>Time) {
    textPosition++;
    storydisplay=story.substring(0,textPosition);
    Time=millis()+updateRate;
    
  }
  
  
  text("Press E to pause", 20, 30);
  text(storydisplay,50,70,550,550);
  
  
}

void keyPressed(){ 
    if (key == 's' || key == 'S') {
    begin = true;
  }
    if (key == 'e' || key == 'E') {
    begin = false;
  }
}