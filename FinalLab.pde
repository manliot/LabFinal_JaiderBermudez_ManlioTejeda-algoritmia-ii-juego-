import processing.sound.*;
SoundFile file;
boolean sw=false,block,inicio=false,cogioMon, swPosMon, sw2=false,  paranorap=true, imagepasar=true, rotarmitad=false,  SubYbaj, dm=true, perdio, RocioTeAmo1, swPuente, SYB;
float x=500, y=396, i=0;
PImage []personaje= new PImage[14]; 
PImage []fondo= new PImage[4];
PImage m1, m2,m3,m4, Moneda;
int h=400-64, puente, mone, peperrorro,  x1, x2, x3, j, rest, x0=5, temp, posMon=5, cantMonTot, cantMonPar,xm1,ym1,xm2,ym2,xm3,ym3,xm4,ym4;
int b=1,xm,ym,maypun,pun;
//Movie movie;

void setup() {
   size(450, 550);   
    inicio();
   
    //file = new SoundFile(this, "Evil Laugh.mp3");
    //file.play();
}
float p=(PI/2);

void draw() {
  
    
  if(keyPressed==true &(key=='R' ||key=='r')){
        inicio();
        Todoinicio();
        inicio=false;
   }
  if(inicio==false){
  image(fondo[2],0,0);
  if(keyPressed==true){
    if(key==ENTER){
     inicio=true;
  }
}
 
  }else{
  if (  paranorap==true & RocioTeAmo1==false ) { 
        paranorap=false;
            background(fondo[1]);
          crack(x0);
           image(personaje[1], x1-45, 335);
  } else {
    if (RocioTeAmo1==true) {
              Todoinicio();
    }
  }
  if ( sw==true && sw2==false & RocioTeAmo1==false) {
        
    line(x1+4, 400, x1+4, y);
           y-= (int)random(3,5);
    if (y==0) { //aqui se crea la bara
           
    }
  }
  if (sw==false && sw2==true & RocioTeAmo1==false) {
       
        if (i<=p) {
          if(i==0){
          bosconia(13, x1-45, 335, 5, x1, x2, x3);
          }else{
           bosconia(1, x1-45, 335, 5, x1, x2, x3);
              
    }translate(x1+4, 400);    
    pushMatrix ();
    //aqui cae la barra
                 rotate(i); 
                   line(0, 0, 0, -(400-y));
                    i+=0.03;
                    popMatrix ();
  }
    if (i==1.589999) {
           imagepasar=false;    //esto es para que se mueva el personaje cuando la bara caiga
          
    }
  }      

  if ((x1+4+396-y)>=x2 & (x1+4+396-y)<=x2+x3 & sw==false & sw2==true &  perdio==false & RocioTeAmo1==false) {    // si cae en  el rect2 la suma de la distancia de x=0 mas x1(anchura del rect) mas la antura de la barra(396 (que es distancia y=0 a el rect)-y)
   
    if (swPuente==false) {
      puente++;
      swPuente=true;
    }
    if (imagepasar==false) {
     
      if (j<=x2+x3-48) {
                   b++;
                   j+=2;
                   subru(j, b);
             if(b==12){   //moover personaje al rec 2
            b=0;
            }
               }
      if (j==x2+x3-55+1 || j==x2+x3-55+2 ) {
       
        rotarmitad=true;
        cantMonTot=1;//int (random(3, 5));
        
      }
      if (rotarmitad==true & dm==true) {
        
        bosconia(1, x2+x3-55, 335, 5, x1, x2, x3);
        line(x1+4, 400, x1+4+(400-y), 400);
  
              }
    }
    if (rotarmitad==true & sw==false & sw2==true & h>=0 & h<=400-64 ) {
     
              bosconia(1, x2+x3-55, h, 5, x1, x2, x3);
              line(x1+4, 400, x1+4+(400-y), 400);
            
              image(m1,xm1,ym1);
             if(xm1>width){
                   xm1=-70;
                   ym1=(int) random(60,300);
                 }else{
                    xm1+=(int) random(3,6);
                 }
        image(m2,xm2,ym2);
                   if(xm2<0){
                   xm2=width+70;
                   ym2=(int) random(60,300);
                 }else{
                    xm2-=(int) random(1,2);
                 }
                    image(m3,xm3,ym3);
                   if(xm3>width){
                   xm3=-70;
                   ym3=(int) random(60,300);
                 }else{
                    xm3+=(int) random(1,3);
                 }
                 
                  image(m4,xm4,ym4);
                   if(xm4<0){
                   xm4=width+40;
                   ym4=(int) random(60,300);
                 }else{
                    xm4-=(int) random(2,4);
                 }
        if( sw==false & sw2==true &(ym1+20>=h &ym1+20<=h+64 & xm1+20>=x2+x3-55 & xm1+20<=x2+x3-55+64)||(ym2+20>=h &ym2+20<=h+64 & xm2+20>=x2+x3-55 & xm2+20<=x2+x3-55+64)||(ym3+20>=h &ym3+20<=h+64& xm3+20>=x2+x3-55& xm3+20<=x2+x3-55+64)||(ym4+20>=h &ym4+20<=h+64 & xm4+20>=x2+x3-55 & xm4+20<=x2+x3-55+64)){
            perdio=true;
            block=true;
            ///aquiu
       }
   if( sw==false & sw2==true &(ym1+20>=posMon &ym1+20<=posMon+64 & xm1+20>=x2+x3-55 & xm1+20<=x2+x3-55+64)||(ym2+20>=posMon &ym2+20<=posMon+64 & xm2+20>=x2+x3-55 & xm2+20<=x2+x3-55+64)||(ym3+20>=posMon &ym3+20<=posMon+64& xm3+20>=x2+x3-55& xm3+20<=x2+x3-55+64)||(ym4+20>=posMon &ym4+20<=posMon+64 & xm4+20>=x2+x3-55 & xm4+20<=x2+x3-55+64)){
       swPosMon=false;
   }
      if (h!=0 & swPosMon==false & cogioMon==false) {
        
        posMon=int (random(0, h-64));
        swPosMon=true;dm=true;
        
      }
      
      if (cantMonPar==cantMonTot+1) { //si cogio todas las monedas
               
                cogioMon=true;
               
        if(SYB==false & SubYbaj==true){
          h-=2;
             //sube
        }else{
        
          h+=2;
          if(h==400-64+2){
                  dm=false;
      }
        }
      }
      if (swPosMon==true & cogioMon==false) {
      
            
             
        if (h==posMon+40||h==posMon+39) {
        
          mone++;
          cantMonPar++;
          swPosMon=false;
          dm=false;
          
        }
        if (dm==true) {
             image(Moneda, x2+x3-55, posMon);
        } 
      }
      if (h==0 ) {
        
        perdio=true;
        block=true;
      }
      if (SYB==false & SubYbaj==true) {
        
        h-=2;
      } else {
        if (SubYbaj==true) {
          h+=2;
        }
      }
    }
    if ( (h==338||h==400||h==340) & temp>=5 &cogioMon==true) {
      
      bosconia(1, x2+x3-55-rest, 335, x0-rest, x1, x2-rest, x3);
      line(x1+4-rest, 400, x1+4+(400-y)-rest, 400);
      rest+=1;
      temp-=1;
    } else { if((h==338||h==400)&cogioMon==false){
        perdio=true;
    }
      if (temp==4) {
                RocioTeAmo1=true;
      }
    }
  } else {
    
    if ( i==1.589999 & sw==false && sw2==true & RocioTeAmo1==false &block==false) {
  println("entro");
      if (peperrorro<=(x1+4)+(400-y)-26) {
       //aqui rueda hasta el final de la linea
      
              b++;
                   subru(peperrorro, b);peperrorro+=2;
        if(b==12){   
            b=0;
            }
     
      } else {
        
        if ((peperrorro<=(x1+4)+(400-y)-26+2 || peperrorro<=(x1+4)+(400-y)-26+1) & h<=570) {
          //println("entro al 22");   //aqui cae
          bosconia(13, peperrorro, h, 5, x1, x2, x3);
          line(x1+4, 400, x1+4+(400-y), 400);
          h+=2;
        }else{
         if(h==572){
          perdio=true;
         }
        }
      }
    }
  }
  if (perdio==true ) {
       textSize(40);
     fill(255);
     
      background(fondo[3]);
       textSize(16);
      
       text("Puentes acertados: "+puente, 140, 360);
         
          text("Empanadas totales: "+mone, 140, 380);
          
            if(maypun==0 ){
                maypun=pun;
                text("Nueva Mejor Puntuacio :)"+maypun, 140,400);
            }else{
                if(maypun<=pun){
                   maypun=pun;
                text("Nueva Mejor Puntuacio :)"+maypun, 140,400);
                
                }
            
            }
              fill(78, 102, 33);
  } 
     pun=(puente*100)+(mone*20);   
     println(maypun);
        println(cogioMon);
           println("h:"+h);
  
    }
}
void subru(int peperrorro, int a) {
  bosconia(a, peperrorro, 335, 5, x1, x2, x3);
  rect(5, 400, x1, 150); 
  line(x1+4, 400, x1+4+(400-y), 400);
}   


void keyPressed() {
  if(inicio==true){
  if (key == ' ') {
    sw= true;
  } 
  if (key=='s'||key=='S') {
     
   
    
  }
  if (keyCode == UP) {
    SubYbaj=true;
    SYB=false;
 
  }
  }
}
void keyReleased() {
    if(inicio==true){
  if (key == ' ') {
    sw= false;
    sw2=true;
  }
  if (keyCode==UP) {
    SYB=true;
  
  }
  
  }  
  if (key=='s'||key=='S') {
   
          exit();
  }
}


void crack(int x0) {//esta subrutina crea el nuevo rect y que no se creen varios superpuestos
  x2= int (random(450-(450-x1-14), 300));
              x3= int (random(50, 100));
                        rect(x2, 400, x3, 150); //rect2
                                temp=x2;
                                      rect(x0, 400, x1, 150);   //rect1
                                stroke(255);
                        fill(255);
               text("Puentes: "+puente, 2, 15);
           text("Empanadas : "+mone, 2, 32);
            text("Puntuacion : "+pun, 2, 52);
  fill(78, 102, 33);
}
void bosconia(int b, int a, int h, int x0, int x1, int x2, int x3) {
  background(fondo[1]);
        rect(x2, 400, x3, 150);
             image(personaje[b], a, h);
                  fill(78, 102, 33);
                       rect(x0, 400, x1, 150);  //rect1
                  stroke(255);
             fill(255);
          text("Puentes: "+puente, 2, 15);
           text("Empanadas : "+mone, 2, 32);
            text("Puntuacion : "+pun, 2, 52);
  fill(78, 102, 33);
}
void inicio(){
   fondo[1]=loadImage("fondo.png");  fondo[2]=loadImage("fondo10.jpg");fondo[3]=loadImage("fin.png");
  background(fondo[1]);
  Moneda=loadImage("empanada.png");
                   personaje[1]=loadImage("man3.png"); personaje[2]=loadImage("man3.png"); personaje[3]=loadImage("man3.png"); personaje[4]=loadImage("man3.png");
                             personaje[5]=loadImage("man2.png"); personaje[6]=loadImage("man2.png"); personaje[7]=loadImage("man2.png"); personaje[8]=loadImage("man2.png");
                                       personaje[9]=loadImage("man.png"); personaje[10]=loadImage("man.png"); personaje[11]=loadImage("man.png"); personaje[12]=loadImage("man.png");personaje[13]=loadImage("personaje2.png");
                                             m1=loadImage("jaider1.png");m3=loadImage("jaider1.png");
                                                   m2=loadImage("jaider2.png");m4=loadImage("jaider2.png");
                                                        strokeWeight(4);
   x1= int (random(50, 100) );
                         fill(78, 102, 33);
                                    stroke(255);
                                         textSize(16);
                                             text("Puentes: "+puente, 2, 15);
                                                   text("Empanadas : "+mone, 2, 32);
                                                   text("Puntuacion : "+pun, 2, 52);
                                                          rect(5, 400, x1, 150);   //rect1
                                                                j=x1-45;
                                                                  peperrorro=x1-45;
                                                                 mone=0;puente=0;pun=0;
                                                                 if(maypun==0){
                                                                   textSize(20);
                                                                 text("precione la barra espaciadora",width/2,255);
                                                                 }
} 
void Todoinicio(){
   background(fondo[1]);      
      paranorap=true;     
                x1=x3;  sw=false; sw2=false;      
        paranorap=true;   imagepasar=true;   rotarmitad=false;   SubYbaj=false;      dm=true;   swPuente=false;        
                 cogioMon=false;    swPosMon=false;   cantMonTot=0;  cantMonPar=0; x=500;  y=396; i=0;   j=0;   rest=0;  x0=5;  temp=0;      
      RocioTeAmo1=false;      
                   h=400-64;  pun=0;      block=false;
      b=1;perdio=false;
          if(maypun==0){
                                                                 text("precione la barra espaciadora",width/2,255);
                                                                 }
}