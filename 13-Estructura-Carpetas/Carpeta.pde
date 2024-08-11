//Cargamos la libreria de audio

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
  
//Variables globales
  String pokemonFavorito = "Umbreon";
  String entrenador = "Shinigamy19"; //Cadena de texto, muestra inclusive numeros en formato de texto
  //char a = "a"; Guarda valor de un solo caracter
  int nivel= 20; // variable que almacena numeros hasta 1.000.000.000 (Pesa 32 Bits)
  //long nivel = 1.000.000.001L; Esta variable almacena hasta el numero 9,223,372,036,854,775,807 (Pesa 64 Bits)
  //float experiencia = 1.5;  Esta variable almacena numeros decimales y llega hasta 3.40282347E+38 (como sea que se diga ese numero) (Pesa 32 Bits)
  //double experiencia = -2.984D;  Esta variable almacena aun mas decimales que float (Pesa 64 Bits)
  color negro= color(0, 0, 0);
  color rojo= color(255,0,0);
  color verde= color(0,255,0);
  color azul= color(0,0,255);
  color amarillo= color(255,255,0);
  color blanco= color(255, 255, 255);
  color gris= color(100, 100, 100);

  //Imagenes
  PImage umbreon,fondo; // Creamos nuestros objetos de imagen
  PGraphics ojo; // Creamos nuestro grafico de ojos

  //Fuentes
  PFont roboto, primas; // Creamos nuestros objetos de tipografia

  //Audios
  Minim minim; // Creamos nuestro objeto minim
  AudioPlayer umbreon_rugido; // Creamos nuestros objetos de audio

  //variables para usar con objetos
  int menu = 0;
  int escena = 0;

  //Creamos un objeto
  Menu menuInicio = new Menu();
  Escena escenaInicio = new Escena();



// Otras cosas que vimos
  /* Las variables booleanas que van por verdadero o falso que son los que vamos a usar de ahora en adelante
    boolean pregunta = true;
    if (pregunta) {
      println("The boolean is true");
    } else {
      println("The boolean is false");
    }
  */

  /*Para convertir un string y un init y luego poder usarlo en Hexadecimal
  String hs = "FF006699";
  int hi = unhex(hs);
  fill(hi);
  */

void setup() {
  size(600, 600, P2D); //Tamaño de ventana y entorno (Tamaño x, Tamaño y, Entorno)
  background(gris); //Color de fondo
  frameRate(30);
  smooth();

  // Recuerden que eliminamos de la ruta assets/ cuando ya tenemos data.

  //Imagenes
  umbreon =loadImage("img/Umbreon.png"); //Agarramos nuestra imagenes y las cargamos
  fondo =loadImage("img/Fondo.png");

  ojo = createGraphics(50,50); //Creamos el canva de nuestro pgraphic

  // Audio
  minim = new Minim(this); // Declaramos nuestro objeto minim
  umbreon_rugido = minim.loadFile("mp3/Grito_de_Umbreon.mp3", 1024); // Cargamos el archivo y definimos su calidad.
  // Por una convension se usa 1024 y hace alusion a la velocidad de muestro
  // Si quieren pueden investigar mas sobre este tema.

  //Tipografias
  roboto = createFont("fonts/Roboto.ttf",32); //creamos nuestra tipografia 
  primas = createFont("fonts/Primas.ttf",32);
  
  //roboto = createFont("Roboto",32); Para usar la que ya tienen instalada
  //roboto = createFont("assets/fonts/Roboto.otf",32); Para formatos OTF
  //roboto = loadFont("assets/fonts/Roboto.vlw",32); Para cargar tipografias vectoriales (VLW). 
  
  //Linea de codigo para ver sus tipografias instaladas 
  /*
  String[] fonts = PFont.list();
  println("Fuentes disponibles:");
  for (String font : fonts) {
    println(font);
  }
  */

  //textFont(roboto); si quieren definirla para todo el programa
}

void draw() {
  //println(hex(c)); Convertir una variable en hexadecimal
  //println(binary(gris)); Para convertir una variable en binario 
  //println(unbinary(s1)); Para convertir de binario a texto
  
  println("Posicion X:", mouseX, "Posicion Y:", mouseY, "Menu", menu, "Escena", escena); //Esto es para mostrar las coordenadas del mouse, estado de menu y escena. En la consola.
  

  //Creamos nuestra condisional
  //Marcamos que si Menu es 0 entonces
  if (menu == 0)
  {
    //Trae de tu Objeto menuInicio y emparentalo con menu_inicio
    menuInicio.menu_inicio();
  } //Si menu no es es 0 entonces, busca si menu vale 1 y escena vale 1
  else if ((menu == 1 ) && (escena == 1))
  {
    //Entonces si esto se cumple, trae tu objeto escenaInicio y emparentalo con escena_inicio
    escenaInicio.escena_inicio(); // Al emparejarlo esta pidiendo que se meta al void dentro de class y actualice el objeto en ambos caso

    umbreon_rugido.rewind(); // Retrocedemos nuestro sonido (Rebobinar)
    umbreon_rugido.pause(); // Pausamos nuestro sonido
    //textFont(primas); Si queremos usar una tipografia directamente en una escena predeterminada
  }
  else if ((menu == 1 ) && (escena == 2))//Creamos la nueva escena
  {
    escenaInicio.escena_inicio(); // Volvemos a llamar a nuestro objeto
    umbreon_rugido.play(); //Reproducimos nuestro sonido
  }
  
}

//Usamos class para llamar el objeto
class Menu
{ //Y usamos Void para actualizarlo
  void menu_inicio() 
  {
    //Creamos la interfaz de nuestro menu
    background(gris); // Recuerden siempre que inicia un estadio de void actualizar el background

    image(fondo, 0, 0, width, height); // Creamos nuestra imagen
                                       // Recorda que podes pasar tanto width o height para que se adapte a la pantalla
                                       // Pero tambien podes pasar la informacion en pixeles
                                       // Ej image(fondo, 0, 0, 300, 300); 
                                       // Tambien recorda que se puede usar el operador / para dividir o * para multiplicar
    
    fill(blanco);
    textSize(28);
    text("Esto es un Menu", 200, 55);
    
    fill(azul);
    rect(200,130,200,40); // Usamos este rect como boton
    fill(blanco);
    text("Ir a Pokeball",225,160);
  
    if((mouseX > 200) && (mouseX < 400)) //Marcamos el ratio en X
    {
      if((mouseY > 130) && (mouseY < 170))//Marcamos el ratio en Y
      {
        if(mousePressed == true)//Verificamos si se presiona Click.
        {
          delay(500);
          menu = 1;  // Modificamos los enteros menu y escena
          escena = 1;
          //println("funciona"); 
          //Este print lo podemos usar para verificar si funcionan los botones
        }
      }
    }
    
    fill(rojo);
    rect(200,230,200,40);
    fill(blanco);
    text("Salir",270,260);
    
    if((mouseX > 200) && (mouseX < 400))
    {
      if((mouseY > 230) && (mouseY < 270))
      {
        if(mousePressed == true)
        {
          exit(); //Exit es una funcion para detener el codigo.
        }
      }
    }

    //OJO 1
    ojo.beginDraw(); // Iniciamos el dibujo
    ojo.background(0); // Le damos un fondo
    ojo.stroke(100); // Pintamos de gris las lineas
    ojo.fill(0); // Ponemos el color negro para camuflarlo
    ojo.ellipse(25, 25, 45, 45); // Creamos una ellipse (Posicion x, Posicion y, Direccion x, Direccion y).
    ojo.fill(255); // Ponemos la pupila de blanco
    
    PVector mouse = new PVector(mouseX - 20, mouseY - 200); // Creamos nuestro objeto vector para dibujar el seguimiento del mouse
                                                            // A new PVector se le pasa (Posicion x , Posicion y)
                                                            // Con esto le damos el punto de origen en 20x y en 200y de nuestro canvas principal (600,600)
    mouse.limit(10); // Limitamos que el ojo quede dentro del ratio de los 10 pixeles que ocupa el contorno en el lienzo
    
    ojo.ellipse(25 + mouse.x, 25 + mouse.y, 20, 20); // llamamos a la posicion original le sumamos x e y de nuestro vector
                                                     // Tener en cuenta que x es mouseX - 20 e y es mouseY - 200 es decir PVector(Posicion x , Posicion y)
    
    ojo.endDraw(); // Finalizamos nuestro dibujo del ojo
    image(ojo,20,200); // Elegimos las cordanadas donde se va a ubicar.
    
    //OJO 2  //Replicamos el proceso anterior con diferencias en el PVector que ahora es mouse2
    ojo.beginDraw();
    ojo.background(0);
    ojo.stroke(100);
    ojo.fill(0);
    ojo.ellipse(25, 25, 45, 45);
    ojo.fill(255);
    
    PVector mouse2 = new PVector(mouseX - 70, mouseY - 200);
    mouse2.limit(10);
    
    ojo.ellipse(25 + mouse2.x, 25 + mouse2.y, 20, 20);
    
    ojo.endDraw();
    image(ojo,70,200); // Lo dibujamos unos pixeles mas para el costado para que quede al lado.

  }
}

class Escena
{
  void escena_inicio()
  {
    if(escena == 1) // Creamos nuestra condicional para que si escena es == 1 ejecute esto.
    {
      background(gris); // MUY IMPORTANTE para no tener errores.
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
      
      // Creamos nuestro boton de volver
      fill(azul);
      rect(200,510,200,40);
      fill(blanco);
      textSize(28);
      text("Volver",265,540);
      
      if((mouseX > 200) && (mouseX < 400))
      {
        if((mouseY > 510) && (mouseY < 550))
        {
          if(mousePressed == true)
          {
            delay(500);
            menu = 0;// Volvemos a los valores iniciales
            escena = 0;
            //println("funciona");
          }
        }
      }
    }
    else if(escena == 2) // Si escena es == 2 entonces ejecutamos esta parte
    {
      background(gris); // Evitamos el error
      
      fill(blanco); //Ponemos nuestra informacion (Explicacion en la escena anterior.)
      textSize(48);
      text(pokemonFavorito,40,90);
      
      line(30,100,250,100);
      
      fill(blanco);
      textSize(22);
      text("De: " + entrenador,40,120);
      
      fill(blanco);
      text("Nivel: " + nivel,40,140);
      
      image(umbreon, 170,180); // Sacamnos a nuestro pokemon con la propiedad image
                               // Recorda que image carga al PImage y la posicion. 
                               // Ej: image(PImage, Posicion x, Posicion y)

      fill(azul);
      rect(200,510,200,40);
      fill(blanco);
      textSize(28);
      text("Volver",265,540);
      
      if((mouseX > 200) && (mouseX < 400))
      {
        if((mouseY > 510) && (mouseY < 550))
        {
          if(mousePressed == true)
          {
            delay(500);
            menu = 1;   // Recorda que si queres que vuelva al menu
            escena = 1; // Podes usar menu y escena 0
                        // De la manera actual regresa a la pokeball
            //println("funciona");
          }
        }
      }
      //Si ustedes quieren pueden crear nuevas escenas
    }
  }
}


