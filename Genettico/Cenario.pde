class PedraA{
  float[] pos = new float[2];
  
  PedraA(float[] pos){
    this.pos[0] = pos[0];
    this.pos[1] = pos[1];
  }
  void draw(){
    noStroke();
    
    fill(corCinza1);
    rect(pos[0],pos[1],10,10);
    rect(pos[0]-7, pos[1]+2, 5, 5);
    rect(pos[0]+7, pos[1]+2, 5, 5);
    
    fill(corCinza2);
    rect(pos[0]-3,pos[1]-2,5,5);
    rect(pos[0]+3,pos[1]+2,5,5);
  }
  
  //Movimento do Terreno de Terra
  void Move(float[] value){
    pos[0] += value[0];
    pos[1] += value[1];
  }
  float[] SendPos(){
    return pos;
  }
}
class PedraB{
  float[] pos = new float[2];
  
  PedraB(float[] pos){
    this.pos[0] = pos[0];
    this.pos[1] = pos[1];
  }
  void draw(){
    noStroke();
    
    fill(corVerde1);
    rect(pos[0],pos[1],10,10);
    rect(pos[0]+7, pos[1]+2, 5, 5);
    fill(corCinza1);
    rect(pos[0]-5, pos[1]+2, 10, 5);
    
    fill(corCinza2);
    rect(pos[0]-3,pos[1]-2,5,5);
    rect(pos[0]+3,pos[1]+2,5,5);
    
  }
  
  //Movimento do Terreno de Terra
  void Move(float[] value){
    pos[0] += value[0];
    pos[1] += value[1];
  }
  float[] SendPos(){
    return pos;
  }
}
class PedraC{
  float[] pos = new float[2];
  
  PedraC(float[] pos){
    this.pos[0] = pos[0];
    this.pos[1] = pos[1];
  }
  void draw(){
    noStroke();
    
    fill(corCinza1);
    rect(pos[0],pos[1],30,15);
    rect(pos[0]+17,pos[1]+2,5,10);
    rect(pos[0]+20,pos[1]+5,5,5);
    rect(pos[0],pos[1]-9,15,5);
    rect(pos[0]-17,pos[1]+2,5,10);
    
    fill(corCinza2);
    rect(pos[0]-8,pos[1]-10,5,5);
    rect(pos[0]+12,pos[1]-5,5,5);
    rect(pos[0]+10,pos[1],10,5);
    rect(pos[0]-8,pos[1]+5,5,5);
    rect(pos[0]-15,pos[1]-5,10,5);
    
  }
  
  //Movimento do Terreno de Terra
  void Move(float[] value){
    pos[0] += value[0];
    pos[1] += value[1];
  }
  float[] SendPos(){
    return pos;
  }
}
class PedraD{
  float[] pos = new float[2];
  
  PedraD(float[] pos){
    this.pos[0] = pos[0];
    this.pos[1] = pos[1];
  }
  void draw(){
    noStroke();
    
    fill(corCinza1);
    rect(pos[0],pos[1],30,15);
    rect(pos[0]+17,pos[1]+2,5,10);
    rect(pos[0]-17,pos[1]+2,5,10);
    
    fill(corVerde2);
    rect(pos[0]+20,pos[1]+5,5,5);
    rect(pos[0]+12,pos[1]-5,5,5);
    rect(pos[0]+5,pos[1]-10,5,5);
    
    fill(corVerde1);
    rect(pos[0]-5,pos[1]-9,15,5);
    
    fill(corCinza2);
    rect(pos[0]+10,pos[1],10,5);
    rect(pos[0]-8,pos[1]+5,5,5);
    rect(pos[0]-15,pos[1]-5,10,5);
    
  }
  
  //Movimento do Terreno de Terra
  void Move(float[] value){
    pos[0] += value[0];
    pos[1] += value[1];
  }
  float[] SendPos(){
    return pos;
  }
}

class PisoTerra{
  float[] pos = new float[2];
  
  PisoTerra(float[] pos){
    this.pos[0] = pos[0];
    this.pos[1] = pos[1];
  }
  void draw(){
    noStroke();
    
    fill(corMarrom1);
    rect(pos[0],pos[1],20,20);
    
    fill(corMarrom2);
    rect(pos[0]-8,pos[1],5,5);
    rect(pos[0]+5,pos[1]+8,5,5);
    rect(pos[0]+8,pos[1]-5,5,10);
  }
  
  //Movimento do Terreno de Terra
  void Move(float[] value){
    pos[0] += value[0];
    pos[1] += value[1];
  }
  float[] SendPos(){
    return pos;
  }
}
class PisoAgua{
  float[] pos = new float[2];
  
  PisoAgua(float[] pos){
    this.pos[0] = pos[0];
    this.pos[1] = pos[1];
  }
  void draw(){
    noStroke();
    
    fill(corAzul1);
    rect(pos[0],pos[1],20,20);
    
    fill(corAzul3);
    rect(pos[0]-8,pos[1],5,5);
    rect(pos[0]+5,pos[1]+8,5,5);
    rect(pos[0]+8,pos[1]-5,5,10);
  }
  
  //Movimento do Terreno de Terra
  void Move(float[] value){
    pos[0] += value[0];
    pos[1] += value[1];
  }
  float[] SendPos(){
    return pos;
  }
}
