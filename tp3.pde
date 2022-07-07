String []textosDePantallas= new String[6];
String estado;
float d = dist(mouseX, mouseY, 400, 350);
int radius= 55;
PFont fuente1;
PImage fondo, escudo, copas, veronTuki,vitrina;
float posXlobo, posYcopa, posXcopa,tiempo;


void setup() {
  size(800, 600 );
  textSize( 24 );
  textAlign( CENTER, CENTER );
  ellipseMode(RADIUS);
  fuente1= loadFont("Raavi-48.vlw");
  estado = "pantalla1";
  escudo= loadImage("4321.png");
  fondo= loadImage("estudio.jpg");
  posXlobo= random(50, width-50);
  copas= loadImage("copas.png");
 tiempo=0;
  posYcopa= -30;
  posXcopa=random(5, width-5);
  veronTuki= loadImage("veronTuki.jpg");
  vitrina=loadImage("vitrinaLobo.jpg");
  textosDePantallas[0]="¡ALERTA!";
  textosDePantallas[1]="Esquivá las copas para ganar";
  textosDePantallas[2]="Pulsa el botón para comenzar";
  textosDePantallas[3]="Perdiste 7riper0";
  textosDePantallas[4]="Jugar otra vez";
  textosDePantallas[5]="0:" + tiempo;
}

void draw() {
  background(120, 20, 20);

  //contenido de pantalla1
  if ( estado.equals("pantalla1") ) {
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
    textSize(25);
    text(textosDePantallas[2], 400, 325);
    ellipse( width/2, height/2+100, 40, 40 );
    popStyle();
  }
  //contenido de pantalla 2
  else if (estado.equals("pantalla2")) {    
    image(fondo, 0, 0, 800, 600);
    image(escudo, mouseX, height-100, 80, 80);
        
    if(tiempo>=20){
      estado="pantalla4";
    }
    for (float enemigos=0; enemigos<5; enemigos++) {
      image(copas, posXcopa*enemigos, posYcopa, 80, 80);//COLOCO VARIOS ENEMIGOS MULTIPLICANDO LA POS POR EL FOR
            if (dist(mouseX, 500, posXcopa*enemigos, posYcopa) <50) { //CALCULO LA COLISION EN EL FOR
        estado="pantalla3";
      }
    }
    posYcopa+=7;
    //LAS COPAS VUELVEN A LA POSICION ORIGINAL Y SE ELIGE UNA POS RANDOM
    if (posYcopa <-70) {
      posXcopa=random(100, 200);
    }
    if (posYcopa>height+40) {
      posYcopa=-100;
    }

  }
  //contenido pantalla3
  else if (estado.equals("pantalla3")) {
    image(veronTuki, 0, 0, 800, 600);
    strokeWeight(10);
    text(textosDePantallas[3], 400, 280, 20);
 if(mouseX<450 && mouseX>330 && mouseY<450 && mouseY>350 && mousePressed){
   estado="pantalla1";

 }
 else if(estado.equals("pantalla4")){
 image(vitrina,200,200,200,500);
 
 }
 println(tiempo);
strokeWeight(10);
 fill(0);
 text(textosDePantallas[4],400,310,20);
 fill(255,0,0);
 rect(330,350,150,100);
 noFill();
 
  }
   println(tiempo);
}

void mouseMoved() {
  if (mouseX> 50 && mouseX< width -50) {
    posXlobo=mouseX;
  }
}

void mousePressed() {
  if (estado.equals("pantalla1") && dist(mouseX, mouseY, width/2, height/2+100) <= 20) {
    estado= "pantalla2";
  }
}
