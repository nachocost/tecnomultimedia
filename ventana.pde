class ventana {
float x,y,h;

ventana(){
y=100;
x=80;
h= 420;
  

}
  
void crear(){
background(#80D3E3);
pushStyle();
noFill();
strokeWeight(5);
line(290,100,290,400);
line(80,250,500,250);
rect(x,y,h, 300);
popStyle();
}  

void callclasses(){
nube.dibujar();
snow.dibujar();
snow2.dibujar();
snow3.dibujar();
snow4.dibujar();
snow5.dibujar();
snow6.dibujar();


}
  
  
  
  
  
  
  
  
  
  
  
  
}
