// LINK DEL VIDEO
// https://youtu.be/G5_YoS4_kpQ
float tam;
void setup() {
  size(500, 500);
}

void draw() {
  //fondo cambiante de color con map
  float yt = map( mouseX, 0, width, 10, 255);
  float xt = map(mouseY, 0, height, 10, 255);
  background(yt, 0, xt, 0);
  //circulos en el medio ciclos FOR
  for (int r =30; r>0; r--) {
    strokeWeight(4);
    noFill();
    circle(width/2, height/2, tam*r);
  }
  //reinicio del programa y velocidad IF
  tam+=0.15;
  if (tam>=50) {
    tam=0;
  }
  //cuadricula ancho CICLOS FOR

  for (int i =0; i< width; i+=10) { 
    line(0, i, width, i+0);
  }  
  //cuadricula alto CICLOS FOR
  for (int i =0; i< height; i+=10) {

    line(i, 0, i, height);
  }
}
