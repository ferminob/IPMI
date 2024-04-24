PImage imagen;


void setup(){  
  imagen = loadImage("frutilla.png");  
  size(800,400);
  imagen.resize(400, 400);
  image(imagen, 0, 0);
}

void draw(){
  
  background(255);
  imagen.resize(400, 400);
  image(imagen, 0, 0);
  
  stroke(0,200,0);
  fill(0,200,0);
  quad(693 ,  48 , 676 ,  75 , 679 ,  98 , 700 ,  53);
  
  stroke(255,0,0);
  fill(255,0,0);
  circle(488, 354, 50);
  circle(580,172,200);
  circle(643,243,200);
  triangle(490,379,664,341,463,352);
  triangle(463,352,481,158,664,341);
  triangle(656,106,716,175,673,152);
  circle(644,130,100);
  triangle(592,73,651,80,627,88);
  triangle(734,200,684,100,683,148);
  
  
  stroke(0,255,0);
  fill(0,255,0);
  triangle(687,25,656,63,678,99);
  triangle(603 ,  14 , 653 ,  78 , 602 ,  62);
  triangle(685 ,  103 , 775 ,  105 , 732 ,  137);
  triangle(787 ,  186 , 728 ,  160 , 748 ,  197);
  triangle(695 ,  116 , 738 ,  195 , 712 ,  133);
}

void mouseClicked(){
print(mouseX,", ", mouseY,", ");
}
