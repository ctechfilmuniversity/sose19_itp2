// Introduction to Programming II with Processing 2019
// Angela Brennecke | Filmuniversity Babelsberg KONRAD WOLF
//
// Based on Sketch from Ira Greenberg’s book, p. 97:
// Ira Greenberg (2007): Processing: Creative Coding & Computational Art. 
// Friends of ED/Apress Press. Berkley, CA.
//

final int numRectangles = 1000;
int numRect = 100;
float[] rectArray = new float[numRectangles * 4];

void setup( ) 
{
  size(600, 600);
  background(255);


  drawRectangles();

  for (int i = 0; i < (numRectangles * 4); i+=4 ) {

    rectArray[i] = random(width - 200); // x pos
    rectArray[i+1] = random(height - 200); // y pos
    rectArray[i+2] = random(50, 200); // rect width
    rectArray[i+3] = random(50, 200); // rect height
  }
}


void draw() {

  background(255);
  noFill();
  drawRectangles();
}


void drawRectangles() 
{
  for (int i=0; i < numRect * 4; i+=4) {

    rect( rectArray[i], rectArray[i+1], rectArray[i+2], rectArray[i+3]);
  }
}

void mouseMoved() {
  
  numRect = int(map(mouseY, 0, height, 0, numRectangles));
  if (numRect > numRectangles) 
    numRect = numRectangles;

}
