//Variables Globales
  String pokemonFavorito= "Umbreon";
  String entrenador="Shinigamy19";
  int nivel= 20;
  color negro= color(0,0,0);
  color blanco= color(255,255,255);
  color rojo= color(255,0,0);
  color verde= color(0,255,0);
  color azul= color(0,0,255);
  color amarillo= color(255,255,0);
  color gris= color(100, 100, 100);


void setup(){
  size(600,600,P2D);
  frameRate(30);
  smooth();
  background(gris);
}

void draw(){
  println("Posicion X: " + mouseX + ", " + "Posicion Y: " + mouseY);
  
  fill(azul);//Pintar o de color
  textSize(28);// Tamaño de texto
  text("Esto es una pokeball",20,55);// A text se le pasa (Posicion x, Posicion y, tamaño).
  
  fill(blanco);//Pintamos de otro color
  textSize(22);//Volvemos a cambiar de tamaño
  text("Contiene un: " + pokemonFavorito,40,90);//Imprimimos nuestras variables globales.
  
  fill(blanco);
  text("De: " + entrenador,40,120);
  
  fill(blanco);
  text("Nivel: " + nivel,40,150);
  
  
  
}
