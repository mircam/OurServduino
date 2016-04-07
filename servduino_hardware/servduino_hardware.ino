#include <Servo.h>

Servo elServo; //Creacion Obj Servo
int posServo = 0; //variable para posicionServo

void setup() {
   //El servo se conecta en el pin digital 9
  Serial.begin(19200);
  Serial.println("Inicializado"); //Mensaje de "listo para usar"
}

void loop() {
  if (Serial.available()){
    char cmd = Serial.read();
    if(cmd == 'A'){
        elServo.attach(9); //Conecta el servo
        for (posServo = 0; posServo <= 180; posServo += 1) { //Mueve de 0 a 180 grados
    // in steps of 1 degree
          elServo.write(posServo);              // Envia la señal de movimiento
          delay(15);                       
        }
        for (posServo = 180; posServo >= 0; posServo -= 1) { // Mueve servo de 180 a 0 grados
          elServo.write(posServo);              
          delay(15);                       
        }
        elServo.detach(); //Desconecta el servo
    }
  }
}
