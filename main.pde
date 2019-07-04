int value = 0;
int  select = 0;
int menu = 1;




Fall obj = new Fall();

// Every press of mouse reset falling objects
void mousePressed() {  
  obj.reset();
  loop();
} 




void repeat(){

  textSize(25);
  fill(2,0,0);
  text("Nie udało się, kliknij q aby wyjsc lub ", 10,200);
  text("1 aby zagarac ponownie ", 10,220);
 // text();
  
  

  
}

//if u press not desired key
void wrongKey(){

  
 if(keyPressed==false){
            if(mousePressed==true){
                textSize(50);
                text("ZŁY KLAWISZ!!",100,150); 
            }
   }else{
           textSize(50);
           text("ZŁY KLAWISZ!!",100,150); 
   }
}


void menu(){        //main menu
  
    //<>//
     if(menu==1){
      fill(value);
      textSize(40);
      text("Gra",170,200);                   
      textSize(15);
      text("1.Nowa gra",170,230);
      textSize(15);
      text("2.Autor",170,250);
     }

}



void setup(){
      
  
   
  size(500,500,P3D); 
  frameRate(60);
  
  
 
}

void draw() {
background(255);
  

menu();
  
if(key == '1'){
menu = 0;
select = 1;
     }if(keyPressed==true && key!='1'){
       wrongKey(); 
      }
     
     
    if(key == '2'){
    select = 2;
    menu = 0;
    
      }if(keyPressed==true && key!='2'){
       wrongKey(); 
      }
      
 
 
                                      
    if(select==1){
    fill(0);
    ellipse(mouseX, 480, 50, 50);             //Object, which player is moving       
    fill(255,0,0);
    
    obj.falling();
    
    
     obj.fallingSec();
    
    }
   
   
  if(select==2){
  textSize(20);
  fill(200,0,0);
  text("KAMIL KISŁY", 10,480);
 
  repeat();
    
            if(key=='q'){
                
               exit();
            }else{
             loop(); 
            }
   
 }
  
  
 
  
}
