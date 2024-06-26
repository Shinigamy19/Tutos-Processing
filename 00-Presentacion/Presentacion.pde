/*void settings() { 
  // Desde processing 3 se puede usar settings, pero recomiendo usar directamente setup
  // Les dejo de todas maneras los parametros que acepta
  size(); // Tamaño de pantalla
  fullScreen(); // Pantalla completa 
  smooth(); //activa suavisado de bordes
  noSmooth(); //Desactiva los bordes
  frameRate(); // Cantidad de frames a la que corre el programa
  pixelDensity(); // Desidad de pixeles del programa
}*/

void setup() {
  size(600, 600, P2D); //Tamaño de ventana y entorno (Tamaño x, Tamaño y, Entorno)
  background(125); //Color de fondo
  frameRate(30);
  smooth();
}

void draw(){
  println("Posicion X: " + mouseX + ", " + "Posicion Y: " + mouseY); 
  //Esto es para mostrar las coordenadas del mouse. Funciona como console log.
  
}
