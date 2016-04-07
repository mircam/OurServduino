/**
  * Gui para controlar un servomotor
  **/
  
  import processing.serial.*;
  
  Serial puertoSerial;
  int posX = 300;
  int posY = 300;
  void setup(){
    //Ventana Emergente
    size(300, 300);
    colorMode(RGB, 1.0);
    noStroke();
    rectMode(CENTER);
    frameRate(100);
    
    println(Serial.list()); //Tracker de puertos Seriales
    
    puertoSerial = new Serial(this, Serial.list()[0], 19200); //Del vector de puertos serial seleccionamos el 2do puerto  
  }
  
  void draw(){ //color del bg y del boton.
    background(0.0);
    fill(#151FCB);
    rect(posX/2,posY/2,50,50);
  }
  //El servomotor se mueve si se da click al boton azul
  void mouseClicked(){
    println("Pressed");
    if (mouseX > 123 & mouseX < 175 & mouseY >123 & mouseY < 175){
      puertoSerial.write(65);
    }
  }