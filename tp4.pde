Personaje nube;
ventana window;
Nieve snow;
Nieve snow2;
Nieve snow3;
Nieve snow4;
Nieve snow5;
Nieve snow6;



void setup() {
  size(600, 600);
  nube= new Personaje();
  snow= new Nieve();
  snow2= new Nieve();
  snow3= new Nieve();
  snow4= new Nieve();
  snow5= new Nieve();
  snow6= new Nieve();
  window= new ventana();
}
void draw() {
  
  window.crear();
  window.callclasses();
 
  
}
void keyPressed (){
  if (key == 'd' || key == 'D' )
 nube.mooveR();

 if (key == 'a'|| key == 'A' )
 nube.mooveL();
}
