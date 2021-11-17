class minijuego{
  
  // CAMPOS
  int estado, cant;
  PImage fondo;
  muneco m;
  pingu p;
  pingu[] pingus;
  
 //CONSTRUCTOR
   minijuego(int cantidad){
     fondo = loadImage("fondito.png");
     cant=cantidad;
     estado = 0;
     pingus = new pingu[cant];
     m = new muneco(200,370);
     for( int i = 0 ; i < cant ; i++ ){
    pingus[i]= new pingu(cant);
    }
  }
  
  //METODOS
  void act(){
    for( int i = 0 ; i < cant ; i++ ){
    pingus[i].act();
    pingus[i].dibujar();
    }
  }
  
  void dibujar(){
    background(fondo);
    m.dibujar();
  }
  
  void teclas(){
   m.moverArriba();
   m.moverAbajo();
   m.moverIzq();
   m.moverDerec();
  }
}
