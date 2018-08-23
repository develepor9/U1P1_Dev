PImage eraser = null;
String instruction = "To start drawing click mouse button 1 and drag the curosr around the white section of the window. To increase or decrease stroke width press + or - respectivley. To reset the canvas press r.";
String colourInstruction ="Below are samples of all the colours you can select to draw with. To select one press a number from 1 to 8. The first coloum is number 1 to 4 the second from 5 to 8. Number eight is the eraser.";
int lineWidth = 1;
int strokeColour = 0;

void setup ()
{
  size (1000,800);
  background (255);
  eraser = loadImage ("eraser.png"); //loading in eraser image
  eraser.resize (50,50); //resizing
}

void draw ()
{
  noStroke();
  fill(130);
  rect (800,0,200,800); // background for the colour selection planel/ instruction panel
  
  //colour selection circles
  fill (0);
  ellipse (850,540,50,50); // black circle
  fill (200);
  ellipse (850,610,50,50); // grey circle
  fill (#4266F2);
  ellipse (850,680,50,50); // blue circle
  fill (#48D100);
  ellipse (850,750,50,50); // green circle
  fill (#E3002D);
  ellipse (950,540,50,50); // red circle
  fill (#E2FC1F);
  ellipse (950,610,50,50); // yellow circle
  fill (#95731B);
  ellipse (950,680,50,50); // brown circle
  
  //eraser
  image (eraser, 920,730);
  
  textAlign(LEFT);
  textSize (14);
  fill(0);
  
  text (instruction, 810, 90, 180, 190); //main instructions
  text (colourInstruction, 810, 310, 180, 180); // colour instructions
  
  textAlign (CENTER);
  textSize (22);
  text("Drawing Program",900,70); // Title
  
  textSize (12);
  text("Dev", 900, 30);
  
  strokeWeight(lineWidth); //width of line
  stroke(strokeColour); // colour or line
  if (mousePressed == true) //is mouse button 1 is clicked
  {
    line (mouseX, mouseY, pmouseX, pmouseY); //draw a line between the cursor's location and the cursor's previous location
  }
}


void keyPressed()
{
    if (key == 'r') // Wipe canvas if r is pressed
    {
      background(255);
    }
    if (key == '1') // Change line colour to black if 1 is pressed
    {
      strokeColour = 0;
    }
    if (key == '2') // Change line colour to grey if 2 is pressed
    {
      strokeColour = 200;
    }
    if (key == '3') // Change line colour to blue if 3 is pressed
    {
      strokeColour = #4266F2;
    }
    if (key == '4') // Change line colour to green if 4 is pressed
    {
      strokeColour = #48D100;
    }
    if (key == '5') // Change line colour to red if 5 is pressed
    {
      strokeColour = #E3002D;
    }
    if (key == '6') // Change line colour to yellow if 6 is pressed
    {
      strokeColour = #E2FC1F;
    }
    if (key == '7') //Change line colour to brown if 7 is pressed
    {
      strokeColour = #95731B;
    }
    if (key == '8') //Change line colour to white (erase) if 8 is pressed
    {
      strokeColour = 255;
    }
    if (key == '-') // if minus is pressed
    {
      if (lineWidth > 1) // and lineWidth is greater than one
      {
        lineWidth = lineWidth-1; // subtract 1 from lineWidth
      }
    }
    if (key == '+') // if plus is pressed
    {
      lineWidth = lineWidth+1; // add 1 to lineWidth
    } 
}
