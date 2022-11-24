class Pantallas {

  int tiempo=40,delayTiempo;
  String []textosDePantallas= new String[6];
  PImage fondo, veronTuki, fondo2;
  PFont fuente1;
  float posXen, posYen,velocidad=0.1;
  Enemigo enemigo;
  Pj personaje;

  Pantallas() {
    textosDePantallas[0]="¡ALERTA!";
    textosDePantallas[1]="Esquivá las copas para ganar";
    textosDePantallas[2]="Pulsa el botón para comenzar";
    textosDePantallas[3]="Perdiste 7riper0";
    textosDePantallas[4]="Jugar otra vez";
    textosDePantallas[5]="0:" + tiempo;
    veronTuki= loadImage("veronTuki.jpg");
    fondo= loadImage("estudio.jpg");
    fondo2= loadImage("veronyalejandro.jpg");
    fuente1= loadFont("Raavi-48.vlw");
    enemigo=new Enemigo();
    personaje=new Pj(width/2, height-100);
  }

  void inicio() {
    fill(255, 255, 0);
    textFont(fuente1);
    text(textosDePantallas[0], 400, 145);
    fill(255);
    textSize(32);
    text(textosDePantallas[1], 400, 190);
    pushStyle();
    if ( dist( mouseX, mouseY, width/2, height/2+100) <= 20 ) {
      strokeWeight(5);
      fill(255);
    } else {
      fill( 0 );
      strokeWeight(1);
    }
    // boton pantalla principal
    textSize(25);
    text(textosDePantallas[2], 400, 325);
    ellipse( width/2, height/2+100, 40, 40 );
    popStyle();
  }


  void juego() {
    image(fondo, 0, 0, 800, 600);
    text("tiempo: "+ tiempo, width-70, 10);
    personaje.mostrar();
    if (tiempo<=0) {
      juego.estado="pantalla4";
    }
        delayTiempo=(delayTiempo+1)%60;

    if (delayTiempo==0) {
     tiempo=tiempo-1;
    }
    for (float enemigos=0; enemigos<5; enemigos++) {
      enemigo.mostrar(posXen*enemigos, posYen);
      if (dist(mouseX, 500, posXen*enemigos, posYen) <50) {
        juego.estado="pantalla3";
        posYen+=-100;
      }
    }
    posYen+=7;

    if (posYen <-70) {
      posXen=random(100, 200);
    }
    if (posYen>height+40) {
      posYen=-100;
    }
  }

  void perdiste() {
    image(veronTuki, 0, 0, 800, 600);
    strokeWeight(10);
    text(textosDePantallas[3], 400, 280, 20);
    pushStyle();
    textSize(20);
    text("Juego desarrollado por",400,110);
    text("Juan Ignacio errecarte y Coste Ignacio",400, 130);
    popStyle();
    fill(255, 0, 0);
    rect(330, 350, 150, 100);
    if (mouseX<450 && mouseX>330 && mouseY<450 && mouseY>350 && mousePressed) {
     juego.estado="pantalla1";
    }
    tiempo=40;
  }
  void ganaste() {
   image(fondo2,0,0,800,600);
   
    text("GANASTE",width/2,height/2);
   fill(255, 0, 0);
   strokeWeight(10);
    pushStyle();
    fill(0);
    textSize(20);
    text("Juego desarrollado por",400,110);
    text("Juan Ignacio errecarte y Coste Ignacio",400, 130);
    popStyle();
    rect(330, 350, 150, 100);
    if (mouseX<450 && mouseX>330 && mouseY<450 && mouseY>350 && mousePressed) {
     juego.estado="pantalla1";
    }
    tiempo=40;
  }
}
