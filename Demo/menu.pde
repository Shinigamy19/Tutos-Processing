import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//Variables Globales
  String pokemonFavorito= "Umbreon";
  String entrenador="Shinigamy19";
  int nivel= 20;
  //float experiencia = 1.5; Al llegar a 2 el nivel aumenta
  color negro= color(0,0,0);
  color blanco= color(255,255,255);
  color rojo= color(255,0,0);
  color verde= color(0,255,0);
  color azul= color(0,0,255);
  color amarillo= color(255,255,0);
  color gris= color(100, 100, 100);
  
  //Imagenes
  PImage umbreon,garchomp,togekiss,gengar,lucario,lapras,fondo,infoBack,icono,pokeBack,egg,roles,dialogo;
  PGraphics ojo;
  
  //Fuentes
  PFont roboto, primas, comic;
  
  //Audio
  Minim minim;
  AudioPlayer umbreon_rugido,garchomp_rugido,togekiss_rugido,lucario_rugido,gengar_rugido,lapras_rugido;
  
  int menu = 0;
  int escena = 0;
  
  Menu menuInicio = new Menu();
  Escena escenaInicio = new Escena();
  
void settings(){
  size(600, 600);
  smooth();
  
  //PJOGL.setIcon("icon/icono.png");
}


void setup(){
  frameRate(30);
  background(gris);
  surface.setTitle("Pokemon de Shini");
  icono =loadImage("icon/icono.png");
  surface.setIcon(icono);
  surface.setResizable(false);
  //fullScreen();
  
  
  pokeBack =loadImage("img/pokeball_back.png");
  umbreon =loadImage("img/Umbreon.png");
  garchomp =loadImage("img/Garchomp.png");
  togekiss =loadImage("img/Togekiss.png");
  lucario =loadImage("img/Lucario.png");
  gengar =loadImage("img/Gengar.png");
  lapras =loadImage("img/Lapras.png");
  fondo =loadImage("img/Fondo.png");
  infoBack =loadImage("img/info_back.png");
  fondo =loadImage("img/Fondo.png");
  egg =loadImage("img/escena_otros.png");
  roles =loadImage("img/roles_normal.png");
  dialogo =loadImage("img/dialogo.png");
  
  ojo = createGraphics(100,100);
  
  // Audio
  minim = new Minim(this);
  umbreon_rugido = minim.loadFile("mp3/Grito_de_Umbreon.mp3", 1024);
  garchomp_rugido = minim.loadFile("mp3/Grito_de_Garchomp.mp3", 1024);
  togekiss_rugido = minim.loadFile("mp3/Grito_de_Togekiss.mp3", 1024);
  lucario_rugido = minim.loadFile("mp3/Grito_de_Lucario.mp3", 1024);
  gengar_rugido = minim.loadFile("mp3/Grito_de_Gengar.mp3", 1024);
  lapras_rugido = minim.loadFile("mp3/Grito_de_Lapras.mp3", 1024);
  
  roboto = createFont("fonts/Roboto.ttf",32);
  primas = createFont("fonts/Primas.ttf",32);
  
  comic = loadFont("fonts/ComicSansMS-20.vlw");
  
  //roboto = createFont("assets/fonts/Roboto.otf",32);
  
  //roboto = loadFont("assets/fonts/Roboto.vlw",32);
  
}



void draw(){
  println("Posicion X:", mouseX, "Posicion Y:", mouseY, "Menu", menu, "Escena", escena);
  
  //Menu
  if (menu == 0)
  {
    menuInicio.menu_inicio();
  }
  //Pokeball
  else if ((menu == 1 ) && (escena == 1))
  {
    escenaInicio.escena_inicio();
    
    umbreon_rugido.rewind();
    umbreon_rugido.pause();
  }
  //Pokemon
  else if ((menu == 1 ) && (escena == 2))
  {
    escenaInicio.escena_inicio();
    umbreon_rugido.play();
  }
  //Equipo
  else if ((menu == 1 ) && (escena == 3))
  {
    escenaInicio.escena_inicio();
  }
  //Info
  else if ((menu == 1 ) && (escena == 4))
  {
    escenaInicio.escena_inicio();
    
  }
  //Pikachu
  else if ((menu == 1 ) && (escena == 5))
  {
    escenaInicio.escena_inicio();
    
  }
  //Secreto
  else if ((menu == 1 ) && (escena == 6))
  {
    escenaInicio.escena_inicio();
    
  }
  
  
}


class Menu
  {
    void menu_inicio()
    {
      background(negro);
      
      image(fondo, 0, 0, width, height);
      
      textFont(comic);
      
      textSize(32);
      fill(amarillo);
      text("Poke menu de Shini",50,70);
      
      textFont(roboto);
      
      
      //Pokeball
      
      fill(azul);
      rect(200,130,200,40);
      fill(blanco);
      text("Pokeball",240,163);
      
      if((mouseX > 200) && (mouseX < 400))
      {
        if((mouseY > 130) && (mouseY < 170))
        {
          if(mousePressed == true)
          {
            delay(500);
            menu = 1;
            escena = 1;
            //println("funciona");
          }
        }
      }
      
      //Equipo
      
      fill(azul);
      rect(200,230,200,40);
      fill(blanco);
      text("Equipo",255,260);
      
      if((mouseX > 200) && (mouseX < 400))
      {
        if((mouseY > 230) && (mouseY < 270))
        {
          if(mousePressed == true)
          {
            delay(500);
            menu = 1;
            escena = 3;
          }
        }
      }
      
      //Informacion
      
      fill(azul);
      rect(200,330,200,40);
      fill(blanco);
      text("Informacion",218,362);
      
      if((mouseX > 200) && (mouseX < 400))
      {
        if((mouseY > 330) && (mouseY < 370))
        {
          if(mousePressed == true)
          {
            delay(500);
            menu = 1;
            escena = 4;
          }
        }
      }
      
      fill(azul);
      rect(200,430,200,40);
      fill(blanco);
      text("Pikachu",250,463);
      
      if((mouseX > 200) && (mouseX < 400))
      {
        if((mouseY > 430) && (mouseY < 470))
        {
          if(mousePressed == true)
          {
            delay(500);
            menu = 1;
            escena = 5;
            //println("funciona");
          }
        }
      }
      
      
      //Salir
      
      fill(rojo);
      rect(200,530,200,40);
      fill(blanco);
      text("Salir",270,560);
      
      if((mouseX > 200) && (mouseX < 400))
      {
        if((mouseY > 530) && (mouseY < 570))
        {
          if(mousePressed == true)
          {
            exit();
          }
        }
      }
      
      
    }
  }
  
class Escena
  {
  void escena_inicio()
    {
      //Pokeball
      if(escena == 1)
      {
        background(gris);
        
        fill(azul);
        textSize(28);
        text("Esto es una pokeball",20,55);
            
        line(15,65,270,65);
            
        fill(amarillo);
        triangle(20,90,28,75,36,90);
            
        fill(blanco);
        textSize(22);
        text("Contiene un: " + pokemonFavorito,40,90);
            
        fill(verde);
        square(20,105,15);
            
        fill(blanco);
        text("De: " + entrenador,40,120);
            
        fill(rojo);
        quad(20,143,27,136,34,143,27,150);
        
        fill(blanco);
        text("Nivel: " + nivel,40,150);
            
        fill(rojo);
        circle(300,300,300);
            
        fill(blanco);
        arc(300,300,300,300,0, PI, OPEN);
            
        fill(gris);
        rect(150,290,300,25,4);
            
        noStroke();
        circle(300,300,100);
            
        stroke(0);
        fill(blanco);
        circle(300,300,75);
        circle(300,300,50);
        
        if(dist(mouseX,mouseY, 300,300) < 40 && mousePressed)
        {
          delay(500);
          menu = 1;
          escena = 2;
          //println("Funciona");
        }
            
        
        //point(300,400); 
        
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
              menu = 0;
              escena = 0;
              //println("funciona");
            }
          }
        }
      }
      //Pokemon
      else if(escena == 2)
      {
        background(gris);
        fill(blanco);
        textSize(48);
        text(pokemonFavorito,40,90);
        
        line(30,100,250,100);
        
        fill(blanco);
        textSize(22);
        text("De: " + entrenador,40,130);
        
        fill(blanco);
        text("Nivel: " + nivel,40,160);
        
        fill(blanco);
        text("N° Pokedex: 197",40,190);
        
        image(pokeBack, 170,190);
        
        image(umbreon, 170,180);
        
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
              menu = 1;
              escena = 1;
              //println("funciona");
            }
          }
        }
        
      }
      //Equipo
      else if(escena == 3)
      {
        background(negro);
        
        fill(blanco);
        textSize(28);
        text("Mi Equipo",250,50);
        
        fill(blanco);
        textSize(22);
        text("Umbreon",50,110);
        //circle(100,200,150);
        image(pokeBack, 20,120, 160, 160);
        image(umbreon, 20,120,150,150);
      
        if (dist(mouseX, mouseY, 100, 200) < 70 && mousePressed) {
          umbreon_rugido.rewind();
          umbreon_rugido.play();
          garchomp_rugido.pause();
          togekiss_rugido.pause();
          lucario_rugido.pause();
          gengar_rugido.pause();
          lapras_rugido.pause();
          //println("Funciona");
        }
        
        //circle(300,200,150);
        text("Garchomp",250,110);
        image(pokeBack, 220,120, 160, 160);
        image(garchomp, 220,120,170,163);
        if (dist(mouseX, mouseY, 300, 200) < 70 && mousePressed) {
          garchomp_rugido.rewind();
          garchomp_rugido.play();
          umbreon_rugido.pause();
          togekiss_rugido.pause();
          lucario_rugido.pause();
          gengar_rugido.pause();
          lapras_rugido.pause();
          //println("Funciona");
        }
        
        //circle(500,200,150);
        text("Togekiss",450,110);
        image(pokeBack, 420,120, 160, 160);
        image(togekiss, 420,120,170,163);
        if (dist(mouseX, mouseY, 500, 200) < 70 && mousePressed) {
          togekiss_rugido.rewind();
          togekiss_rugido.play();
          umbreon_rugido.pause();
          garchomp_rugido.pause();
          lucario_rugido.pause();
          gengar_rugido.pause();
          lapras_rugido.pause();
          //println("Funciona");
        }
        
        //circle(100,200,150);
        text("Lucario",50,310);
        image(pokeBack, 20,320, 160, 160);
        image(lucario, 20,320,170,163);
        if (dist(mouseX, mouseY, 100, 400) < 70 && mousePressed) {
          lucario_rugido.rewind();
          lucario_rugido.play();
          umbreon_rugido.pause();
          garchomp_rugido.pause();
          togekiss_rugido.pause();
          gengar_rugido.pause();
          lapras_rugido.pause();
          //println("Funciona");
        }
        
        //circle(300,200,150);
        text("Gengar",250,310);
        image(pokeBack, 220,320, 160, 160);
        image(gengar, 220,320,170,163);
        if (dist(mouseX, mouseY, 300, 400) < 70 && mousePressed) {
          gengar_rugido.rewind();
          gengar_rugido.play();
          umbreon_rugido.pause();
          garchomp_rugido.pause();
          togekiss_rugido.pause();
          lucario_rugido.pause();
          lapras_rugido.pause();
          //println("Funciona");
        }
        
        //circle(500,400,150);
        text("Lapras",450,310);
        image(pokeBack, 420,320, 160, 160);
        image(lapras, 420,320,170,163);
        if (dist(mouseX, mouseY, 500, 400) < 70 && mousePressed) {
          lapras_rugido.rewind();
          lapras_rugido.play();
          umbreon_rugido.pause();
          garchomp_rugido.pause();
          togekiss_rugido.pause();
          lucario_rugido.pause();
          gengar_rugido.pause();
          //println("Funciona");
        }
        
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
              menu = 0;
              escena = 0;
              //println("funciona");
            }
          }
        }
        
        if((mouseX > 250) && (mouseX < 375))
        {
          if((mouseY > 24) && (mouseY < 50))
          {
            if(mousePressed == true)
            {
              delay(500);
              menu = 1;
              escena = 6;
              //println("funciona");
            }
          }
        }
        
      }
      //Informacion
      else if(escena == 4)
      {
        background(gris);
        image(infoBack, 0, 0, width, height);
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
              menu = 0;
              escena = 0;
              //println("funciona");
            }
          }
        }
        
      }
      //Pikachu
      else if(escena == 5)
      {
        background(amarillo);
        
        //OJO 1
        ojo.beginDraw();
        ojo.background(amarillo);
        ojo.stroke(100);
        ojo.fill(0);
        ojo.ellipse(50, 50, 90, 90);
        ojo.fill(255);
        
        PVector mouse = new PVector(mouseX - 100, mouseY - 140);
        mouse.limit(20);
        
        ojo.ellipse(50 + mouse.x, 50 + mouse.y, 40, 40);
        
        ojo.endDraw();
        image(ojo,80,140);
        
        //OJO 2
        ojo.beginDraw();
        ojo.background(amarillo);
        ojo.stroke(100);
        ojo.fill(0);
        ojo.ellipse(50, 50, 90, 90);
        ojo.fill(255);
        
        PVector mouse2 = new PVector(mouseX - 100, mouseY - 140);
        mouse2.limit(20);
        
        ojo.ellipse(50 + mouse2.x, 50 + mouse2.y, 40, 40);
        
        ojo.endDraw();
        image(ojo,440,140);
        
        //Cachetes
        fill(255,0,0);
        circle(20,400,100);
        
        fill(255,0,0);
        circle(580,400,100);
        
        
        // Nariz
        fill(0);
        ellipse(280, 290, 15, 15);
        
        // Boca
        
        if (mousePressed)
          {  
            line(260, 390, 340, 390);
          } else{
            circle(298, 390, 80);
            fill(255, 0, 130);
            circle(300, 393, 73);
          }
        
        /*line(290, 390, 330, 390);
        
        circle(300,390,50);
        fill(255,0,130);
        circle(302,393,45);*/
        
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
              menu = 0;
              escena = 0;
              //println("funciona");
            }
          }
        }
        
      }
      
      //Secreto
      else if(escena == 6)
      {
        background(gris);
        image(egg,0, 0, width, height);
        image(dialogo, 0, 36,500,50);
        image(dialogo, 0, 140,500,150);
        image(dialogo, 0, 350,500,150);
        image(roles, 480, 300, 190, 600);
        textFont(comic);
        
        fill(negro);
        textSize(28);
        text("Si, esto es un easter egg!!",24, 70); 
        
        text("Gracias por llegar hasta aca, espero",24, 180); 
        text("haber sido un buen profesor, me",24, 210); 
        text("siento orgulloso de vos.",24, 240); 
        text("Felicitaciones, esto no es facil.",24, 270); 
        
        text("Cree en vos mismo!",24, 390); 
        text("Yo creo en vos, pero antes ",24, 420); 
        text("que se nos piante un lagrimon,",24, 450); 
        text("suscribite por favor XD.",24, 480); 

        
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
              menu = 0;
              escena = 0;
              //println("funciona");
            }
          }
        }
        
      }
      
    }
  }
  
