class myRect 
{
  // properties
  float positionX = 0;
  float positionY = 0;
  float dimensionX = 50;
  float dimensionY = 50;
  
  // constructors
  myRect() {}
  
  myRect(float theWidth, float theHeight) 
  {  
    dimensionX = theWidth;
    dimensionY = theHeight;
  }
  
  myRect(float theX, float theY, float theWidth, float theHeight) 
  {
    positionX = theX;
    positionY = theY;
    dimensionX = theWidth;
    dimensionY = theHeight;
  }
  
  // methods
  void draw() {
    fill(0, 150, 0);
    rect( positionX, positionY, dimensionX, dimensionY);
  }
  
  float getPositionX() { return positionX; }
  float getPositionY() { return positionY; }
  float getHeight() { return dimensionY; }
  float getWidth() { return dimensionX; }
  
  void setPositionX(float theX) { positionX = theX; }
  void setPositionY(float theY) { positionY = theY; }
  void setWidth(float theWidth) { dimensionX = theWidth; }
  void setHeight(float theHeight) { dimensionY = theHeight; }
}