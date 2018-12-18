//FUNÇÕES STATUS
void statusDegree(){
  if(hasFinished){
    StatusDegreeTimer();
    
    food = food > 0 ? food - 1 : 0;
    fluid = fluid > 0 ? fluid - 1 : 0;
    if(food <= 0){
      life = life > 0 ? life - 1 : 0;
    }
    if(fluid <= 0){
      life = life > 0 ? life - 1 : 0;
    }
  }
}
//FIM STATUSDREGREE()
void die(){
  if(life <= 0){
    exit();
  }
}
//FIM DIE()
//FIM FUNÇÕES STATUS
//Movimento
void setmove(float[] pos){
  for(int i = 0; i < VectorId; i++){
    pedraA[i].Move(pos);
    pedraB[i].Move(pos);
    pedraC[i].Move(pos);
    pedraD[i].Move(pos);
    plantaA[i].Move(pos);
    plantaB[i].Move(pos);
    plantaC[i].Move(pos);
    florA[i].Move(pos);
    florB[i].Move(pos);
    arbustoA[i].Move(pos);
    arvores[i].Move(pos);
    arbusto[i].Move(pos);
    flores[i].Move(pos);
  }
}
//FIM MOVE()
//
//MoveGeral()
void MoveGeral(float[] setpos){
  setmove(setpos);
  MapaMove(setpos);
  populacaoH.MovePop(setpos);
  populacaoC.MovePop(setpos);
}
//FIM MOVEGERAL
//FIM FUNÇÕES PLAYER
//
//CONTADORES
void StatusDegreeTimer() {
 hasFinished = false;
 
 final Timer t = new Timer();
 final float sec = 10;
 
  t.schedule(new TimerTask() {
    public void run() {
      hasFinished = true;
    }
  }
  , (long) (sec*1e3));
}
//FIM STATUSDEGREETIMER()
//FIM CONTADORES
//FUNÇÕES DE USER INTERFACE
class BarDraw{
  int posX, posY, w,  h;
  color c1, c2;
  BarDraw(int posX,int posY,int w, int h, color c1, color c2){
    this.posX = posX;
    this.posY = posY;
    this.w = w;
    this.h = h;
    this.c1 = c1;
    this.c2 = c2;
  }
  void draw(int value){
    rectMode(CORNER);
    fill(c1);
    rect(posX,posY,w,h);
    fill(c2);
    rect(posX,posY,value,h);
    rectMode(CENTER);
  }
}
//FIM BARDRAW()
//FIM FUNÇÕES DE USER INTERFACE
//
//FUNÇÕES DE POSIÇÃO
//SETPOS
float[] SetPos(){
  float pos[] = {random(mapMin + 10, mapMax - 10), random(mapMin + 10, mapMax - 10)};
  return pos;
}
//FIM SETPOS
//Construtor Mapa
void MapaGenerator(){
  //Terra
  for (int i = 0; i < piso.length; i++){
    for (int j = 0; j < piso.length; j++){
      float[] pos = {(20*(j+1)), (20*(i+1))};
      piso[i][j] = new PisoTerra(pos);
    }
  }
  //Agua
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < ((mapMax/2)/20)-50; j++){
      float[] pos1 = {(20*(j+1)), 3000 + (20*(j+1))};
      pisoA1[i][j] = new PisoAgua(pos1);
      
      float[] pos2 = {3050 + (20*(j+1)), 3000 + (20*(j+1))};
      pisoA2[i][j] = new PisoAgua(pos2);
    }
  }
}
void MapaMove(float[] value){
  //Terra
  for (int i = 0; i < piso.length; i++){
    for (int j = 0; j < piso.length; j++){
      piso[i][j].Move(value);
    }
  }
  //Agua
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < ((mapMax/2)/20)-50; j++){
      pisoA1[i][j].Move(value);
      pisoA2[i][j].Move(value);
    }
  }
}
void MapaDraw(){
  //Terra
  for (int i = 0; i < piso.length; i++){
    for (int j = 0; j < piso.length; j++){
      piso[i][j].draw();
    }
  }
  //Agua
  for(int i = 0; i < 10; i++){
    for(int j = 0; j < ((mapMax/2)/20)-50; j++){
      pisoA1[i][j].draw();
      pisoA2[i][j].draw();
    }
  }
}
//Fim Construtor Mapa
//FIM FUNÇÕES POSIÇÃO
