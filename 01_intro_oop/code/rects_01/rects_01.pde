// Introduction to Programming II with Processing 2019
// Angela Brennecke | Filmuniversity Babelsberg KONRAD WOLF
//
// Based on Sketch from Ira Greenberg’s book, p. 97:
// Ira Greenberg (2007): Processing: Creative Coding & Computational Art. 
// Friends of ED/Apress Press. Berkley, CA.
//


void setup( ) 
{
  size(600, 600);
  background(255);
  
  boolean isDrawn = false;
  
  for (int i=0; i<100; i++) {
    isDrawn = drawRectangle( random(width), random(height), random(200), random(200) );
    println( isDrawn );
  }
}

boolean drawRectangle(float x, float y, float w, float h ) 
{
  rect(x, y, w, h);
  return true;
}
