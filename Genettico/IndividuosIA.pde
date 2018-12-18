//Esse código consta o objeto referente ao 
//individuo IA da população gerada nesse sketch
class Herbivoro{
  //Pos mark
  float []pos = new float[2];
  float xoff, yoff;
  //DNA IA Variables
  public DNA dna;
  //Colision box
  Rectangle rec;
  public int raio, foodtipe = 0, dam, vel;
  color cor;
  
  //Constructors
  Herbivoro(){
    //this.pos = SetPos();
    this.pos[0] = 100;
    this.pos[1] = 100;
    
    rec = new Rectangle(0, 0, 0, 0);
    xoff = random(5000);
    yoff = random(5000);
  }
  Herbivoro(DNA dna){
    this();
    this.dna = dna;
    
    raio = (int)(dna.gene[2] * 100);
    cor = color(dna.gene[4]*255,dna.gene[5]*255,dna.gene[6]*255);
    dam = (int)(dna.gene[0]*50);
    vel = (int)(dna.gene[1]*50);
  }
  //Movimento
  void Move(float[] vel){
    pos[0] += vel[0];
    pos[1] += vel[1];
  }
  //Getting values
  float[] SendPos(){
    float[] pos = new float[2];
    pos[0] = this.pos[0];
    pos[1] = this.pos[1];
    
    return pos;
  }
  
  //Draw Functions
  void draw(){
    noStroke();
    
    float vx = map(noise(xoff), 0, 1, -vel, vel);
    float vy = map(noise(yoff), 0, 1, -vel, vel);
    
    if(pos[0] <= piso[0][0].SendPos()[0]){
      vx = vx*(-1);
    }else if(pos[0] >= piso[(mapMax/20)-1][(mapMax/20)-1].SendPos()[0]){
      vx = vx*(-1);
    }
    if(pos[1] <= piso[0][0].SendPos()[1]){
      vy = vy*(-1);
    }else if(pos[1] >= piso[(mapMax/20)-1][(mapMax/20)-1].SendPos()[1]){
      vy = vy*(-1);
    }
    float[] vecvel = {vx,vy};
    Move(vecvel);
    
    int id = (int)(dna.gene[3] * 2);
    switch(id){
      case 0:
        TipeA();
      break;
      case 1:
        TipeB();
      break;
      case 2:
        TipeC();
      break;
    }
    
    xoff +=0.01;
    yoff +=0.01;
  }
  void TipeA(){
    fill(cor);
    rect(pos[0],pos[1],25,20);
    rect(pos[0]-10,pos[1]-12,5,5);
    rect(pos[0]+10,pos[1]-12,5,5);
    
    fill(corVermelho);
    rect(pos[0]-5,pos[1],5,5);
    rect(pos[0]+5,pos[1],5,5);
  }
  void TipeB(){
    fill(cor);
    rect(pos[0],pos[1],25,20);
    rect(pos[0]-10,pos[1]-12,5,5);
    rect(pos[0]+10,pos[1]-12,5,5);
    rect(pos[0]-14,pos[1]-12,5,10);
    rect(pos[0]+14,pos[1]-12,5,10);
    
    fill(corAzul1);
    rect(pos[0]-5,pos[1],5,5);
    rect(pos[0]+5,pos[1],5,5);
    
    fill(cor);
    rect(pos[0]-10, pos[1], 5, 5);
    rect(pos[0]+10, pos[1], 5, 5);
    rect(pos[0]-15, pos[1]-5, 5, 5);
    rect(pos[0]+15, pos[1]-5, 5, 5);
  }
  void TipeC(){
    fill(cor);
    rect(pos[0], pos[1], 25, 20);
    rect(pos[0]-14, pos[1], 5, 10);
    rect(pos[0]+14, pos[1], 5, 10);
    rect(pos[0], pos[1]-12, 10, 5);
    
    fill(corVermelho);
    rect(pos[0]-5, pos[1], 5, 5);
    rect(pos[0]+5, pos[1], 5, 5);
  }
}

class Carnivoro{
   //Pos mark
  float []pos = new float[2];
  float xoff, yoff;
  //DNA IA Variables
  public DNA dna;
  //Colision box
  Rectangle rec;
  public int raio, foodtipe = 0, dam, vel;
  color cor;
  
  //Constructors
  Carnivoro(){
    this.pos = SetPos();
    rec = new Rectangle(0, 0, 0, 0);
    xoff = random(5000);
    yoff = random(5000);
  }
  Carnivoro(DNA dna){
    this();
    this.dna = dna;
    raio = (int)(dna.gene[2] * 100);
    cor = color(dna.gene[4]*255,dna.gene[4]*255,dna.gene[6]*255);
    dam = (int)(dna.gene[0]*25);
    vel = (int)(dna.gene[1]*25);
  }
  //Movimento
  void Move(float[] vel){
    pos[0] += vel[0];
    pos[1] += vel[1];
  }
  //Getting values
  float[] SendPos(){
    float[] pos = new float[2];
    pos[0] = this.pos[0];
    pos[1] = this.pos[1];
    
    return pos;
  }
  
  //Draw Functions
  void draw(){
    noStroke();
    float vx = map(noise(xoff), 0, 1, -dna.gene[1]*50, dna.gene[1]*50);
    float vy = map(noise(yoff), 0, 1, -dna.gene[1]*50, dna.gene[1]*50);
    
    float[] vecvel = {vx,vy};
    Move(vecvel);
    
    int id = (int)(dna.gene[3] * 2);
    switch(id){
      case 0:
        TipeA();
      break;
      case 1:
        TipeB();
      break;
      case 2:
        TipeC();
      break;
    }
    
    xoff +=0.01;
    yoff +=0.01;
  }
  void TipeA(){
    //corpo
    fill(corAmarelo);
    rect(pos[0], pos[1], 25, 15);
    rect(pos[0]-10, pos[1]-8, 5, 5);
    rect(pos[0]+10, pos[1]-8, 5, 5);
    rect(pos[0], pos[1]+10, 5, 5);
    
    fill(corAzul1);
    rect(pos[0]-5, pos[1], 5, 5);
    rect(pos[0]+5, pos[1], 5, 5);
    
    fill(corCinza1);
    rect(pos[0]-5, pos[1]+10, 5, 5);
    rect(pos[0]+5, pos[1]+10, 5, 5);
  }
  void TipeB(){
  //corpo
    fill(corMarrom1);
    rect(pos[0], pos[1], 25, 15);
    rect(pos[0]-10, pos[1]-8, 5, 5);
    rect(pos[0]+10, pos[1]-8, 5, 5);
    rect(pos[0], pos[1]+10, 5, 5);
    
    fill(corVerde2);
    rect(pos[0]-5, pos[1], 5, 5);
    rect(pos[0]+5, pos[1], 5, 5);
    
    fill(corCinza1);
    rect(pos[0]-5, pos[1]+10, 5, 5);
    rect(pos[0]+5, pos[1]+10, 5, 5);
    rect(pos[0]-5, pos[1]+15, 5, 5);
    rect(pos[0]+5, pos[1]+15, 5, 5);
  }
  void TipeC(){
    //corpo
    fill(corRoxo);
    rect(pos[0], pos[1], 25, 20);
    rect(pos[0]-13,pos[1]+5, 5, 15);
    rect(pos[0]+13, pos[1]+5, 5, 15);
    rect(pos[0]-10, pos[1]-10, 5, 5);
    rect(pos[0]+10, pos[1]-10, 5, 5);
    rect(pos[0], pos[1]+12, 15, 5);
    
    fill(corVerde1);
    rect(pos[0]-5, pos[1], 5, 5);
    rect(pos[0]+5, pos[1], 5, 5);
  }
}
