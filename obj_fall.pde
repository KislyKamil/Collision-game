class Fall{
  
  
  float speed1;
  float speed2;
  int shape;
  int in;
  int place1;
  int place2;
  boolean end;
  int pkt=0;


 
     Fall(){
  
         shape =(int)random(2);    
         in=(int)random(500);
         speed1=2;
         speed2=2;     
         place1=10;
         place2=300;
         end= false;
         
       }
 
       
       
       
    void collision(){
         falling();
         fallingSec();
          }
          
   void score(){
      text(pkt,450,480);
    }
     
    void reset(){
         shape =(int)random(2);    
         in=(int)random(500);
         speed1=2;
         speed2=2;     
         place1=10;
         place2=300;
         end= false;

    }
      void falling(){
  do{  
      score();
  
     if(shape == 0){     //kwadrat    
     scale(1);
     fill(255,0,0);
     rect(place1, speed1, 40, 40);
     speed1 +=5;
   
                     if(speed1 >= 420 && speed1 < 500){
                     if(place1 < mouseX+55 && place1 > mouseX-55){
                      
                        
                      pkt = 0;
                     noLoop();
                      key='2';
                           
                               }
            }    
    }
  
       if(shape == 1){                                             //kolo 
      
      
       scale(1);
       fill(225,0,0);
       ellipse(place1, speed1, 45, 45);
       speed1 +=5;
              
                           if(speed1 >= 430 && speed1 < 520){
         if(place1 < mouseX+54 && place1 > mouseX-54){
          
          
                   
                      pkt =0;
                     noLoop();
                      key='2';
                    
         }

   }
       
               } 
                   
                        if(speed1 >= 550){
                          speed1=2;
                          place1= (int)random(500);
                          shape= (int)random(2);
                          end=true;
                          pkt+=1;
                          }
                   
   
                          
       }while(end == false); 
  
  
  }
   
     
     void fallingSec(){

   do{  

     
     
     if(shape == 1){                                             //kwadrat
     speed2 +=4.5;   
     scale(1);
     rect(place2, speed2, 40, 40);
     
     
                     if(speed2 >= 420 && speed2 < 500){
         if(place2 < mouseX+55 && place2 > mouseX-55){
          key='2';
                   
                      pkt =0;
                      noLoop();
                      key='2';
                     
         }

   }
     }
     
  
     if(shape == 0){                                             //kolo  
     speed2 += 4.5;
     scale(1);
     ellipse(place2, speed2, 45, 45);
     
   
           if(speed2 >= 430 && speed2 < 520){
                 if(place2 < mouseX+55 && place2 > mouseX-55){
                     
                      
                     
                      pkt =0;
                     noLoop();
                      key='2';
                      
     
                   }

             }
       
               }
               
                if((place2<(place1+30))&& place2 >=place1){
                           place2=place1+150; 
                          }
                             if((place2>(place1-30))&& place2 <= place1){
                           place2=place1-150; 
                          }
               
              
                  if(speed2 > 550){
                          speed2=2;
                          place2= (int)random(500);
                          shape= (int)random(2);
                          end=true;
                          pkt+=1;
                      
                          }
               
   

       }while(end== false); 
  }
 
 
 
 
}
