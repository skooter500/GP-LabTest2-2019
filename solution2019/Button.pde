class Button
{
  int number;
  PVector pos;
  float radius;
  
  Button(int number, float x, float y, float radius)
  {
    this.number = number;
    this.pos = new PVector(x, y);
    this.radius = radius;
  }
  
  boolean pressed(float x, float y)
  {
    return (dist(x, y, pos.x, pos.y) < radius);
  }
  
  void render()
  {
    pushMatrix();
    translate(pos.x, pos.y);
    noFill();
    stroke(255);
    ellipse(0,0, radius * 2, radius * 2);
    fill(255);
    textAlign(CENTER, CENTER);
    text(number, 0, 0);
    popMatrix();
  }
}
