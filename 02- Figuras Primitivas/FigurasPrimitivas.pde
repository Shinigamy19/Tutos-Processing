//Variables globales
  String pokemonFavorito = "Umbreon";
  String entrenador = "Shinigamy19";
  int nivel= 20;
  color negro= color(0, 0, 0);
  color rojo= color(255,0,0);
  color verde= color(0,255,0);
  color azul= color(0,0,255);
  color amarillo= color(255,255,0);
  color blanco= color(255, 255, 255);
  color gris= color(100, 100, 100);



void setup() {
  size(600, 600, P2D); //Tamaño de ventana y entorno (Tamaño x, Tamaño y, Entorno)
  background(gris); //Color de fondo
  frameRate(30);
  smooth();
}

void draw() {
  println (mouseX +"," + mouseY); //Esto es para mostrar las coordenadas del mouse. Como console log.
  

  fill(azul);
  textSize(28);// Tamaño de texto
  text("Esto es una pokeball",20,55);// A text se le pasa (Posicion x, Posicion y, tamaño)
  
  
  line(15, 65, 270, 65); // Line funciona en circulos, se le pasa (Posicion x, Posicion y, Direccion x, Direccion y)
                         // Cuando se trabaja en entorno 3d se puede agregar posicion en z y direccion en z al final
                         // Ejemplo (Posicion x, Posicion y, Direccion x, Direccion y, Posicionz, Direccion z) 
                         // (15, 65, 270, 65, 100, 100); 
                         
  fill(amarillo);
  triangle(20, 90, 28, 75, 36, 90);  // A Triangle se le pasa: 
                                     // (x1 , y1 , x2 , y2 , x3 , y3 )
                                     //  Para entender mejor esto pensemos en x1 y1 como la esquina inferior izquierda
                                     //  A x2 y2 como el centro del triangulo (esquina central)
                                     //  A x3 y3 como la esquina inferior derecha
                                         
  textSize(22);// Tamaño de texto
  fill(blanco);
  text("Contiene un: " + pokemonFavorito,40,90);
  
  fill(verde);
  square(20, 105, 15); // A Square se le pasa (Posicion x, Posicion y, tamaño)
  fill(blanco);
  text("De: " + entrenador,40,120);
                                         
 
  fill(rojo);
  quad(20, 143, 27, 136, 34, 143, 27, 150);// A Quad se le pasa: 
                                             // (x1 , y1 , x2 , y2 , x3 , y3 , x4 , y4 )
                                             //  Para entender mejor esto pensemos en y lo vamos a dividir:
                                             //  En x1 y1 como la esquina inferior izquierda
                                             //  En x2 y2 como el esquina superiror derecha
                                             //  En x3 y3 como la esquina inferior derecha
                                             //  En x4 y4 como la esquina inferior izquierda
  fill(blanco);
  text("Nivel: " + nivel,40,150);
  
  
  fill(rojo);
  circle(300,300,300); // A circle se le pasa (Posicion x, Posicion y, tamaño)
  fill(blanco);
  arc(300,300,300,300,0,PI,OPEN); // A Arc se le pasa (Posicion x, Posicion y, Alto, Ancho, Corte y Trazo)
  
  
  fill(gris);
  rect(150,290,300,25,4); // A Rect se le pasa (Posicion x, Posicion y, Ancho, Alto, Radio(OPCIONAL))
                          // En radio se puede pasar un parametro como en este caso para todas las esquinas
                          // O se puede pasar 1 parametro por esquina empezando por la esquina superior izquierda.
                          // ( x1, x2, y1, y2 ) y dejando la sintaxis de la siguiente manera: 
                          // rect(150,290,300,25,x1,x2,y1,y2)
                          
  noStroke(); //Sacamos el controno
  circle(300,300,100);
  
  stroke(0); //Ponemos el controno en negro
  fill(blanco);
  circle(300,300,75);
  circle(300,300,50);
  
  
  //point(370, 198); //A Point se le pasa(Posicion x, Posicion y).
  
}
