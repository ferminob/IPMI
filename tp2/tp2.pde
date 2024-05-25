//Fermin Oberti 119102/7
//Comision 5
//para mas placer escuchar con: https://youtu.be/zfRSmjkerME?si=t2TB76tmlVzrzReU
int tiempo, pantalla;
int posx, posy, posx2, posy2;
int a;
PImage imagen0,imagen1, imagen2, imagen3, imagen4, imagen5,imagenfondo;
PFont fuenteAranita,fuentenormal;
boolean ini;
void setup(){
  size(640,480); 
  
  tiempo = 0;
  pantalla = 0;
  imagenfondo = loadImage("fondo.jpg");
  imagen0 = loadImage("img0.jpg");
  imagen1 = loadImage("img1.jpg");
  imagen2 = loadImage("spidernegro.jpg");
  imagen3 = loadImage("miles.jpg");
  imagen4 = loadImage("gwen.jpg");
  imagen5 = loadImage("ben.jpeg");
  
  
 fuentenormal = loadFont("BookmanOldStyle-Italic-48.vlw");
 fuenteAranita = createFont("The Amazing Spider-Man.ttf", 32);
 
 ini = false;
}

void draw(){
  imageMode(CORNER);
  image(imagenfondo, 0,0,width,height);
  
  if (pantalla == 0) {
    if (!ini) {
      posx = -100;
      posy = 480;
      ini = true;
    }
    
    imageMode(CENTER);
    image(imagen0, width/2, posy, width/1.5, height/1.5);
    if (posy > height/2){
      posy--;
    }
    else{
      posy = height/2;
    }
    
    fill(250,0,0);
    textFont(fuenteAranita, 48);
    text("SPIDER-MAN", posx, 50);
    if (posx < 200){
      posx++;
    }
    else{
      posx = 200;
    }
    
  }
  
  if (pantalla == 1) {
    if (!ini) {
      posx = 0;
      posy = 0;
      a=0;
      ini = true;
    }
    
    
    
    fill(255,255,255,a);
    textFont(fuentenormal, 24);
    text("Fue creado por Stan Lee (1922-2018)", 0, 50);
    text("y publicado en 1962 por Marvel Comics", 0, 100);
    text("hasta el dia de hoy se siguen publicando numeros", 0, 150);
    
    imageMode(CORNER);
    image(imagen1, posx , height/3 , 960, 320);
    if (posx > -320){
      posx--;
    }
    else{
      posx = -320;
    }
    
    a++;
    
  }
  
  if (pantalla == 2) {
  if (!ini) {
      posx = width/3;
      posy = 480;
      posx2 = 640;
      a=0;
      ini = true;
    }
    
    textMode(CENTER);
    text("Cuenta con muchas historias, ya sean felices o tragicas, como tambien de varios universos", posx, 25);
    posx--;
    tint(255, a);
    image(imagen4,width/4,30,width/2,height/2);
    image(imagen2,0,posy,width/2,height/2);
    image(imagen3,posx2,height/2,width/2,height/2);
    a++;
    if (posy > height/2){
      posy--;
    }
    else{
      posy = height/2;
    }
    
    if (posx2 > width/2){
      posx2--;
    }
    else{
      posx2 = width/2;
    }
    
    
  }
  
  if (pantalla >= 3) {
    
    if (!ini && pantalla == 3) {
      posx = 0;
      posy = 0;
      a=0;
      ini = true;
    }
    
    imageMode(CENTER);
    tint(255, a);
    a++;
    image(imagen5,width/2,height/2,width,height);
    
    
    fill(0,0,0, 255);
    textMode(CENTER);
    textFont(fuentenormal);
    textSize(24);
    text("muchas de las historias de las peliculas", 0, 30+ posy);
    text("los juegos y las series estan basadas en los comics", 0, 60+ posy);
    text("mucha gente fue influenciada con buenos habitos ", 0, 90+ posy);
    text("ya que nos enseño que un gran poder", 0, 120+ posy);
    text("conlleva una gran responsabilidad", 0, 150+ posy);
  
    if (posy < 300){
      posy++;
    }
    
    
    if (pantalla == 4){
      fill(255,0,0);
      circle(600,50,40);
      textFont(fuenteAranita);
      textSize(12);
      text("REINICIAR", 580, 90);
      if (mouseX >= 580 && mouseX <= 620 && mouseY >= 30 && mouseY <= 70){
        fill(150,0,0);
        circle(600,50,40);
      }
      
      
    }
    
    
  }
    
 
 
  rect(0,475,tiempo,480);
  
  if (tiempo < 640 && pantalla <= 3) {
    tiempo++;
  }
  else{
      tiempo = 0;
      if (pantalla <= 3){
         pantalla++;
         ini = false;
      }  
  }
    
}

void mousePressed(){
  if (mouseX >= 580 && mouseX <= 620 && mouseY >= 30 && mouseY <= 70){
    tiempo = 0;
  pantalla = 0;
  ini = false;
  }
  
}
