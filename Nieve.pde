//creo clase
class Nieve {
  PImage coponieve;
  float vel, tam, x, y;

  Nieve () {
    coponieve = loadImage("coponievecaldera.png");
    coponieve.resize(30,30);
    tam=60;
    x= random (50, 300);
    y=random (110, 350);
    vel= 10;
  }

  void dibujar() {
    image (coponieve, 250, 250);
    if (y >= 400 && x >= 300 && y <= 100 && x >= 50) {
   x--;
  }
  
  
  
  
  
  
  
  
}
}
