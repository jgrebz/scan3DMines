int Photo = 11;
int L1 = 2;
int L2 = 3;
int L3 = 4;
int L4 = 5;
int L5 = 6; 
int L6 = 10;
int L7 = 8;
int L8 = 9;

int received;


void setup() {
  // put your setup code here, to run once:
  pinMode(11,OUTPUT);
  digitalWrite(L1, LOW);
  pinMode(2,OUTPUT);
  digitalWrite(L2, LOW);
  pinMode(3,OUTPUT);
  digitalWrite(L3, LOW);
  pinMode(4,OUTPUT);
  digitalWrite(L4, LOW); 
  pinMode(5,OUTPUT);
  digitalWrite(L5, LOW);
  pinMode(6,OUTPUT);
  digitalWrite(L6, LOW);
  pinMode(7,OUTPUT);
  digitalWrite(L7, LOW);
  pinMode(8,OUTPUT);
  digitalWrite(L8, LOW);
  pinMode(9,OUTPUT);
  digitalWrite(Photo, LOW);


}

void loop() {
  // put your main code here, to run repeatedly:
 if (Serial.available()>0) {          // Si des données sont disponibles
    received = Serial.read();          // On les récupère
    if(received == 'a'){              // Séquence de prise des photos
  
  digitalWrite(L1, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L1, LOW);
    delay(1000);
  digitalWrite(L2, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L2, LOW);
    delay(1000);
  digitalWrite(L3, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L3, LOW);
    delay(1000);
  digitalWrite(L4, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L4, LOW);
    delay(1000);
  digitalWrite(L5, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L5, LOW);
    delay(1000);
  digitalWrite(L6, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L6, LOW);
    delay(1000);
  digitalWrite(L7, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L7, LOW);
    delay(1000);
  digitalWrite(L8, HIGH);
    delay(1000);
  digitalWrite(Photo, HIGH);
    delay(50);
  digitalWrite(Photo, LOW);  
    delay(1000);
  digitalWrite(L8, LOW);
    delay(1000);

    }
    if(received == 'b') { //Allumage de deux barres de LED opposées pour la placement du système
  digitalWrite(L1, HIGH);
  digitalWrite(L3, HIGH);
  digitalWrite(L5, HIGH);
  digitalWrite(L7, HIGH);      

    }
     

     if(received == 'c') { // Extinction de toutes les LEDs
      digitalWrite(L1, LOW);
	  digitalWrite(L2, LOW);
	  digitalWrite(L3, LOW);
	  digitalWrite(L4, LOW);
	  digitalWrite(L5, LOW);
	  digitalWrite(L6, LOW);
	  digitalWrite(L7, LOW);
	  digitalWrite(L8, LOW);
    }
	
	if(received == 'd') { // Allumage de deux barres opposées de 90 ° ou extinction en finction de leur temps
		digitalWrite(L1,HIGH);
		digitalWrite(L3,HIGH);
	}
  if(received == '1'){
     digitalWrite(L1, HIGH);
    }
     if(received == '2'){
     digitalWrite(L2, HIGH);
    }
    if(received == '3'){
     digitalWrite(L3, HIGH);

    }
    if(received == '4'){
     digitalWrite(L4, HIGH);

    }
    if(received == '5'){
     digitalWrite(L5, HIGH);

    }
    if(received == '6'){
     digitalWrite(L6, HIGH);

    }
    if(received == '7'){
     digitalWrite(L7, HIGH);
    }
    if(received == '8'){
     digitalWrite(L8, HIGH);
    }
 }
}
