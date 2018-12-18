//Esse código consta o objeto referente ao 
//individuo player da população gerada nesse sketch
class IndividuoP{
  int posX, posY;
  
  IndividuoP(int posX,int posY){
    this.posX = posX;
    this.posY = posY;
  }
  void draw(){
    noStroke();
    
    //braçoE
    fill(#F8C59E);
    rect(posX-10,posY,5,5);
    fill(0);
    rect(posX-10,posY+5,5,5);
    
    //braçoD
    fill(#F8C59E);
    rect(posX+10,posY,5,5);
    fill(0);
    rect(posX+10,posY+5,5,5);
    
    //corpo
    fill(#F8C59E);
    rect(posX,posY,15,20);
    
    //olhos
    fill(0);
    rect(posX-5,posY-10,5,5);
    rect(posX+5,posY-10,5,5);
    
  }
  void Fluid(int value){
    fluid += value;
  }
  void Food(int value){
    food += value;
  }
  void Life(int value){
    life += value;
  }
}
