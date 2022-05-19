int pantalla ;
float mauroboselli;
PImage las_tres_spiders;
PImage nowayhome;
PImage sieteacero;
PImage calderaaagoool;
PImage pincharrata;
PImage drbilardo;
PImage daleleon;
PFont brujitaveron;
void setup() {
   size(700, 400);
 las_tres_spiders = loadImage("TRESHOMBRESARAÑAS.jpg"); 
 nowayhome = loadImage("PORTADANWH.jpg");
 sieteacero = loadImage("ELENCOACTORAL.jpg");
 calderaaagoool= loadImage("ELWACHINDELENTES.jpg");
 pincharrata= loadImage("PRODUCCIONES.jpg");
 drbilardo= loadImage("MEMEPEDA.jpg");
 daleleon= loadImage("DALEWACHOQUEYATERMINO.jpg");
 brujitaveron= loadFont("fuentebrujitaveron11.vlw");
 textFont(brujitaveron);
 mauroboselli= 0;

}
 
void draw() {
   println(mouseX, mouseY);
  if(pantalla==0){//solo la foto de entrada spiderman no way home 
  image(nowayhome,0,0,700,400);
  fill(255,0,0);
  textSize(25);
  text("Hace click cada vez que quieras cambiar de pagina",150,mauroboselli,mauroboselli);
     mauroboselli++;
 } 
 else if(pantalla==1){
 background(21, 193, 163 );
 image(las_tres_spiders,0,0,700,400);
 textSize(30);
 text("Actores Principales:", 60, 50 );
 textSize(20);
 text("_Tom Holland as Spiderman",60, 90);
 text("_Andrew Garfield as Spiderman",60, 130);
 text("_Tobey Maguire as Spiderman",60, 170);
 text("_Zendaya as Mery Jane",60, 210);
 text("_Marisa Tomei as May Parker",60, 250);


  }
  else if(pantalla==2){
   background(203, 27, 63 );
   image(sieteacero,0,0,700,400);
   textSize(30);
   
   text(" Demás Actores:", 60, 50 );
   textSize(20);
   text("_William Dafoe as Norman Osborn",60,90);
   text("_Benedict Cumberbatch as Doctor Strange",60,130);
   text("_Jacob Batalon as Ned Leeds",60,170);
   text("_Jhon Favreau as Harold Happy Hoogan",60,210);
   text("_Jamie Foxx as Electro",60,250);
   text("_Alfred Molinas as Doctor Octopus",60,290);
   text("_Tony Revolory as Flash Thomson",60,330);
   text("_J. Jonah Jameson as J.K. Simmons",60,370);
  }
  else if(pantalla==3){
    background(57,237, 38);
    image(calderaaagoool,0,0,700,400);
 textSize(30); 
   text(" Sonidista:", 220, 60 );  // adjuntar foto del sonidista en notas de wsp chabon con lentes
   textSize(20);
   text("Michael Giacchino",220,150);
   }
  else if(pantalla==4){
    background(250, 76 , 8);
    image(pincharrata,0,0,700,400);
    fill(0);
    textSize(30); 
    text("Productores:", 60,50);
    textSize(20);
    text("Productor delegado :Louis D'Esposito",60,90);
    text("Productor: Kevin Feige",60,130);
    text("Productora delegada :Victoria Alonso",60,170);
    text("Productora :Amy Pascal",60,210);
    text("Productor delegado :Johan perritano",60,250);
    text("Productora delegada :Rachel O´Connor",60,290);
    text("Productor delegado :Avi Arad",60,330);
    text("Productor delegado :Matthew Tolmach",60,370);


  }
  else if(pantalla==5){
    background(147 ,4 ,76);
    image(drbilardo,0,0,700,400);
    fill(255);
    textSize(30);
    text("Equipo Tecnico:",60,50);
    textSize(15);
    text("Montador Jefe: Jeffrey Ford",60,90);
    text("Director de Fotografia : Mauro Fiore",60,130);
    text("Supervisor de efectos visuales: Daniel Sudick",60,170);
    text("Decorador: Rosemary Brandenburg",60,210);
    text("Dieñador de produccion: Jane Musky",60,250);
    text("Director de reparto: Jeffrey Ford",60,290);
    text("Director de reparto: Sarah Finn",60,330);
    text("Diseñador de vestuario: Sanja Milkovic Hays",60,370);
    text("Director artistico: Bryan Stultz",400,90);
    text("Supervisor efectos visuales: Kelly Port",400,130);
    text("Decorador: Darren Gilfort",400,170);
    text("Decorador: Emmanuelle Hoessly",400,210);
    text("Director artistico: David Scott",400,250);
    
  }
else if (pantalla==6){
background(0, 255, 57);
image(daleleon,0,0,700,400);
fill(0);
textSize(30);
text("Marcas que ayudaron a la pelicula:",60,50);
textSize(20);
text("Distribucion Internacional: Columbia Pictures",60,90);
text("Produccion: Columbia Pictures",60,130);
text("Produccion: Sony Pictures",60,170);
text("Distribucion: Sony Pictures Releasing de España",60,210);
text("Produccion: Marvel Studios",60,250);
}

}
void mouseClicked() {
  if (pantalla == 0) {
    pantalla=1;
  } else if (pantalla == 1){
    pantalla=2;
  }
  else if (pantalla == 2){
    pantalla=3;
  }
  else if (pantalla == 3){
    pantalla=4;
  }
  else if (pantalla == 4){
    pantalla=5;
  }
  else if ( pantalla == 5){
  pantalla=6;
  }
  else if( pantalla==6){
  pantalla=0;
  }

}
