
private double fractionLength = .8;
private int smallestBranch = 3;
private double branchAngle = .4;  
public void setup()
{  
  size(700,700);    
  //noLoop();
}
public void draw()
{  
  
  //ombre
  background(0); 
  int thing = 0;
  float r = 109;
  float g = 187;
  float b = 245;
  noFill();
  while(thing<700){
   stroke(r,g,b);
   line(0,thing,700,thing);
   thing++;
   r+=(250-109)/480.0;
   g+=(137-187)/480.0;
   b+=(23-245)/480.0;
  }
  
  //wall
  noStroke();
  fill(242,227,208);
  rect(0,0,100,700);
  rect(600,0,100,700);
  rect(0,0,700,50);
  
  //tablething
  fill(255,252,247);
  rect(0,600,700,100);
  
  //frame
  fill(131);
  rect(90,50,10,550);
  rect(90,590,510,10);
  rect(600,50,10,550);
  rect(90,50,510,10);
  
  rect(345,50,10,550);
  rect(100,320,510,10);
  
  //big boi leef
  stroke(65,93,43);  
  strokeWeight(1);
  drawBranches(280,395,70,3*Math.PI/2-0.6);
  noStroke();
  //bonsai base
   
  fill(126,94,55);
  translate(430,460);
  rotate(PI/5);
  ellipse(0,0,300,100);
  rotate(-PI/5);
  translate(-430,-460);
  
  beginShape();
  curveVertex(280,355);
  curveVertex(280,355);
  curveVertex(261,450);
  curveVertex(307,500);
  curveVertex(307,500);
  endShape();
  beginShape();
  curveVertex(280,355);
  curveVertex(280,355);
  curveVertex(360,450);
  curveVertex(307,500);
  curveVertex(307,500);
  endShape();
  
  noFill();
  stroke(126,94,55);
  strokeWeight(40);
  beginShape();
  curveVertex(250,240);
  curveVertex(250,240);
  curveVertex(280,330);
  curveVertex(325,390);
  curveVertex(325,390);
  endShape();
  
  beginShape();
  curveVertex(250,240);
  curveVertex(250,240);
  curveVertex(260,180);
  curveVertex(260,175);
  curveVertex(260,175);
  endShape();
  
  strokeWeight(20);
  beginShape();
  curveVertex(385,180);
  curveVertex(385,180);
  curveVertex(275,250);
  curveVertex(285,385);
  curveVertex(285,285);
  endShape();
  
  beginShape();
  curveVertex(155,270);
  curveVertex(155,270);
  curveVertex(220,310);
  curveVertex(260,320);
  curveVertex(260,320);
  endShape();
  
  noStroke();
  fill(126,94,55);
  triangle(278,96,244,165,280,167);
  
  //pot
  stroke(126,67,55);
  strokeWeight(30);
  line(135,450,590,450);
  fill(126,67,55);
  beginShape();
  vertex(160,450);
  vertex(570,450);
  vertex(550,590);
  vertex(180,590);
  endShape(CLOSE);
  
  stroke(65,93,43);  
  strokeWeight(1);
  //drawBranches(260,325,60,3*Math.PI/2-0.4);  //will add later
  //small boi leef
  branchAngle=0.55;
  drawBranches(220,300,25,3*PI/2-1.5);
  drawBranches(260,230,30,3*PI/2);
}
public void drawBranches(int x,int y, double branchLength, double angle)
{  
  double angle1, angle2;
  angle1 = angle + branchAngle;
  angle2 = angle - branchAngle;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle1) + x);
  int endY2 = (int)(branchLength*Math.sin(angle1) + y);

line(x,y,endX1,endY1);
line(x,y,endX2,endY2);
 
  branchLength = branchLength * fractionLength;
 
  if(branchLength > smallestBranch){
    drawBranches(endX1,endY1,branchLength,angle1);
    drawBranches(endX2,endY2,branchLength,angle2);
   
  }
 
} 

