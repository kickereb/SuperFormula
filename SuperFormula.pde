void setup()
{
  size (500, 500);

  noFill();
  stroke(255);
  strokeWeight(2);
}
float t = 0;
void draw()
{
  background(0);
  translate(width/2, height/2);
  beginShape();

  for (float theta = 0; theta <= 2*PI; theta+=0.01)
  {
    float rad = r(theta, 
      mouseX/100.0, //a
      mouseY/100.0, //b
      8, //m  - rotational symmetry
      1, //n1 - sharpness of edges
      0.5 * sin(t) + 0.5, //n2
      0.5 * cos(t) + 0.5  //n3
      );
    float x = 50*rad*cos(theta);
    float y = 50*rad*sin(theta);
    vertex(x, y);
  }

  for (float theta = 0; theta <= 2*PI; theta+=0.01)
  {
    float rad = r(theta, 
      mouseX/100.0, //a
      mouseY/100.0, //b
      8, //m  - rotational symmetry
      1, //n1 - sharpness of edges
      0.5 * sin(t) + 0.5, //n2
      0.5 * cos(t) + 0.5  //n3
      );
    float x = 20*rad*cos(theta);
    float y = 20*rad*sin(theta);
    vertex(x, y);
  }
  
  for (float theta = 0; theta <= 2*PI; theta+=0.01)
  {
    float rad = r(theta, 
      mouseX/100.0, //a
      mouseY/100.0, //b
      8, //m  - rotational symmetry
      1, //n1 - sharpness of edges
      0.5 * sin(t) + 0.5, //n2
      0.5 * cos(t) + 0.5  //n3
      );
    float x = 10*rad*cos(theta);
    float y = 10*rad*sin(theta);
    vertex(x, y);
  }

  endShape();
  t += 0.05;
}

float r(float theta, float a, float b, float m, float n1, float n2, float n3)
{
  return pow(pow(abs(cos(m * theta / 4.0) / a), n2) + 
    pow(abs(sin(m * theta / 4.0) / b), n3), -1/n1);
}
