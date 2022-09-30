class Personaje {                   //creo la clase personaje
  PImage nube;
  float x, y, tam, vel;

  //constructor 

  Personaje () {
    nube = loadImage("nubedelagrimasdelobo.png");
    x=50;
    y= 100;
    vel=10;
  }

  void dibujar() {
    image(nube, x, y, tam, tam);
  }
  //metodos
  void mooveR() {
    x+=vel;
  }
  void mooveL() {
    x+=vel;
  }
}
