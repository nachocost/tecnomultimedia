class Enemigo {

  float posX, posY;
  PImage copas;

  Enemigo() {
    posY= -random(30,300) ;
    posX=random(5, width-5);
    copas= loadImage("copas.png");
  }

  void mostrar(float posX_, float posY_) {
    posX=posX_;
    posY=posY_;
    image(copas, posX, posY, 80, 80);
  }
}
