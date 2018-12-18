//Esse código consta o objeto referente às 
//plantas da população gerada nesse sketch

//PLANTAS SEM AÇÃO
class Arvores{
  float[] pos = new float[2];
  
  Arvores(float[] pos){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
  }
  void draw(){
    noStroke();
    
    fill(corVerde1);
    rect(pos[0],pos[1]-40,40,25);
    rect(pos[0]-25,pos[1]-20,25,40);
    rect(pos[0]+25,pos[1]-20,25,20);
    rect(pos[0]+25,pos[1]-35,15,15);
    rect(pos[0]-25,pos[1]-40,15,15);
    rect(pos[0]-5,pos[1]-25,15,15);
    
    fill(corMarrom1);
    rect(pos[0], pos[1], 10, 40);
    rect(pos[0]-10, pos[1], 10, 5);
    rect(pos[0]-20, pos[1]-5, 10, 5);
    rect(pos[0]+10, pos[1]-10, 10, 5);
    rect(pos[0]+18, pos[1]-15, 5, 5);
    rect(pos[0]+23, pos[1]-20, 5, 5);
    rect(pos[0]+2, pos[1]-22, 5, 5);
    rect(pos[0]+6, pos[1]-26, 5, 5);
    rect(pos[0]+10, pos[1]-30, 5, 5);
    rect(pos[0]+8, pos[1]-35, 10, 5);
    rect(pos[0]+8, pos[1]-35, 10, 5);
    rect(pos[0]+13, pos[1]-40, 5, 5);
    rect(pos[0], pos[1]-40, 5, 5);
    rect(pos[0]-10, pos[1]-22, 10, 5);
    rect(pos[0]-8, pos[1]-28, 5, 10);
    rect(pos[0]-20, pos[1]-26, 10, 5);
    rect(pos[0]-20, pos[1]-26, 10, 5);
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
class ArbustoA{
  float[] pos = new float[2];
  color cor;
  
  ArbustoA(color cor, float[] pos){
    this.pos[0] = pos[0];
    this.pos[1] = pos[1];
    this.cor = cor;
  }
  void draw(){
    noStroke();
    
    fill(corVerde1);
    rect(pos[0],pos[1]-20,40,40);
    rect(pos[0]+20,pos[1]-10,20,40);
    rect(pos[0]-20,pos[1]-10,20,40);
    rect(pos[0]+30,pos[1]-10,10,20);
    rect(pos[0]-30,pos[1]-10,10,20);
    
    fill(corMarrom1);
    rect(pos[0],pos[1],5,20);
    rect(pos[0]-10, pos[1], 10, 5);
    rect(pos[0]-20, pos[1], 10, 5);
    rect(pos[0]+10, pos[1]-5, 10, 5);
    rect(pos[0]+18, pos[1]-10, 5, 5);
    rect(pos[0]+23, pos[1]-15, 5, 5);
    rect(pos[0]+2, pos[1]-18, 5, 5);
    rect(pos[0]+6, pos[1]-21, 5, 5);
    rect(pos[0]+10, pos[1]-25, 5, 5);
    rect(pos[0]+8, pos[1]-30, 10, 5);
    rect(pos[0]+8, pos[1]-30, 10, 5);
    rect(pos[0]+13, pos[1]-25, 5, 5);
    rect(pos[0], pos[1]-35, 5, 5);
    rect(pos[0]-10, pos[1]-18, 10, 5);
    rect(pos[0]-8, pos[1]-23, 5, 10);
    rect(pos[0]-20, pos[1]-21, 10, 5);
    rect(pos[0]-20, pos[1]-21, 10, 5);
    
    fill(cor);
    rect(pos[0]-30, pos[1]-5, 5, 5);
    rect(pos[0]-30, pos[1]-10, 15, 5);
    rect(pos[0]-30, pos[1]-15, 5, 5);
    rect(pos[0]+30, pos[1]-5, 5, 5);
    rect(pos[0]+30, pos[1]-10, 15, 5);
    rect(pos[0]+30, pos[1]-15, 5, 5);
    rect(pos[0], pos[1]-15, 5, 5);
    rect(pos[0], pos[1]-20, 15, 5);
    rect(pos[0], pos[1]-25, 5, 5);
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
class PlantaA{
  float[] pos = new float[2];
  
  PlantaA(float[] pos){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
  }
  void draw(){
    noStroke();
    
    fill(corVerde1);
    //Graveto 1
    rect(pos[0], pos[1], 5, 15);
    //Graveto 2
    rect(pos[0]+10, pos[1]+2, 5, 10);
    rect(pos[0]+15, pos[1]-8, 5, 10);
    rect(pos[0]+10, pos[1]-15, 5, 5);

    fill(corBege);
    //Graveto 1
    rect(pos[0], pos[1]-8, 5, 5);
    //Graveto 2
    rect(pos[0]+10, pos[1]-23, 5, 10);    
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
class PlantaB{
  float[] pos = new float[2];
  
  PlantaB(float[] pos){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
  }
  void draw(){
    noStroke();
    
    fill(corVerde1);
    rect(pos[0], pos[1], 5, 10);
    fill(corVerde2);
    rect(pos[0]-5, pos[1]-5, 5, 10);
    rect(pos[0]+5, pos[1]-5, 5, 10);
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
class PlantaC{
  float[] pos = new float[2];
  
  PlantaC(float[] pos){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
  }
  void draw(){
    noStroke();
    
    fill(corVerde1);
    rect(pos[0], pos[1], 5, 10);
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
class FlorA{
  float[] pos = new float[2];
  color cor;
  
  FlorA(color cor, float[] pos){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
    this.cor = cor;
  }
  void draw(){
    noStroke();
    fill(corVerde1);
    rect(pos[0], pos[1], 5, 20);
    rect(pos[0]-5, pos[1], 5, 5);
    fill(cor);
    rect(pos[0], pos[1]-10, 15, 5);
    rect(pos[0], pos[1]-15, 5, 5);
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
class FlorB{
  float[] pos = new float[2];
  color cor;
  
  FlorB(color cor, float[] pos){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
    this.cor = cor;
  }
  void draw(){
    noStroke();
    fill(corVerde1);
    rect(pos[0], pos[1], 5, 20);
    rect(pos[0]-5, pos[1], 5, 5);
    fill(cor);
    rect(pos[0], pos[1]-15, 15, 10);
    rect(pos[0], pos[1]-20, 5, 5);
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
//FIM PLANTAS SEM AÇÃO
//  
//PLANTAS COM AÇÃO
class Arbusto{
  float[] pos = new float[2];
  int total, id;
  color cor;
  
  Arbusto(color cor, float[] pos, int id){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
    this.cor = cor;
    
    this.id = id;
    
    total = 1000;
  }
  void draw(){
    noStroke();
    
    //Cor Fundo
    fill(corVerde1);
    rect(pos[0], pos[1], 40, 20);
    rect(pos[0]-22, pos[1], 5, 10);
    rect(pos[0]+22, pos[1], 5, 10);
    rect(pos[0], pos[1]-12, 25, 5);
    
    //Cor Detalhes
    fill(corVerde2);
    rect(pos[0]-5,pos[1]-12,5,5);
    rect(pos[0]+10,pos[1]-8,5,5);
    rect(pos[0]-5,pos[1],5,5);
    rect(pos[0]+5,pos[1],5,5);
    rect(pos[0]-15,pos[1]-5,5,5);
    
    //Cor Frutos
    fill(cor);
    rect(pos[0]+22, pos[1]-2, 5, 5);
    rect(pos[0]-5,pos[1]-5,5,5);
    rect(pos[0]+5,pos[1]-5,5,5);
    rect(pos[0]-15,pos[1]+5,5,5);
    rect(pos[0],pos[1]+5,5,5);
    rect(pos[0]+15,pos[1]+5,5,5);
  }
  //Função Ação
  void Action(){
    total = total - 5;
    
    switch(id){
      case 0:
        ind.Life(5);
      break;
      
      case 1:
        ind.Food(5);
      break;
      
      case 2:
        ind.Life(-5);
        ind.Food(-5);
      break;
    }
  }
  //Funções Movimento
  void Move(float[] value){
    pos[0] += value[0];
    pos[1] += value[1];
  }
  float[] SendPos(){
    return pos;
  }
}

class Flores{
  float[] pos = new float[2];
  int total, id;
  color cor;
  
  Flores(color cor, float[] pos, int id){
    this.pos[1] = pos[1];
    this.pos[0] = pos[0];
    this.cor = cor;
    
    this.id = id;
    
    total = 300;
  }
  void draw(){
    noStroke();
    fill(corVerde1);
    rect(pos[0], pos[1], 5, 20);
    rect(pos[0]-5, pos[1], 5, 5);
    fill(cor);
    rect(pos[0], pos[1]-10, 15, 5);
    rect(pos[0], pos[1]-15, 5, 5);
    rect(pos[0], pos[1]-5, 5, 5);
    fill(corBege);
    rect(pos[0], pos[1]-10, 5, 5);
  }
  //Função Ação
  void Action(){
    total = total - 10;
    
    switch(id){
      case 0:
        ind.Life(2);
      break;
      
      case 1:
        ind.Food(1);
      break;
      
      case 2:
        ind.Life(-2);
        ind.Food(-2);
      break;
    }
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
