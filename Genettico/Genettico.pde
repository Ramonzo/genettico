//IMPORTS
import java.util.Timer;
import java.util.TimerTask;

import java.awt.Rectangle;
//FIM IMPORTS
//
//VARIAVEIS
IndividuoP ind;
BarDraw foodBar,fluidBar,lifeBar;
//Terreno
PisoTerra[][] piso;
PisoAgua[][] pisoA1, pisoA2;
PedraA[] pedraA;
PedraB[] pedraB;
PedraC[] pedraC;
PedraD[] pedraD;
//Plantas
PlantaA[] plantaA;
PlantaB[] plantaB;
PlantaC[] plantaC;
FlorA[] florA;
FlorB[] florB;
ArbustoA[] arbustoA;
Arvores[] arvores;
//Plantas Consumíveis
Arbusto[] arbusto;
Flores[] flores;
//Populações
PopulacaoH populacaoH;
PopulacaoC populacaoC;
//Outras Variaveis
color corVerde1, corVerde2, corVermelho, corAmarelo, corRoxo, corAzul1, corAzul2, corAzul3, corBege, corMarrom1, corMarrom2, corCinza1, corCinza2;

int life = 100, fluid = life, food = life;
int barposX = 10, barposY = 10,barW = life,barH = 10, barDis = 10;
int mapMin, mapMax;
int VectorId, MoveVel, PopId;
boolean hasFinished = true;
//FIM VARIAVEIS
//
//Setup
void setup(){
  rectMode(CENTER);
  size(700,700);
  frameRate(24);
  
  //CORES PADRÕES
  corVerde1 = color(37,177,76);
  corVerde2 = color(181,230,29);
  corVermelho = color(237,28,36);
  corAmarelo = color(255,201,14);
  corRoxo = color(163,73,164);
  corAzul1 = color(63,72,204);
  corAzul2 = color(0,162,232);
  corAzul3 = color(153,217,234);
  corBege = color(239,228,176);
  corMarrom1 = color(136,0,21);
  corMarrom2 = color(185,122,87);
  corCinza1 = color(127,127,127);
  corCinza2 = color(195,195,195);
  //FIM CORES
  //
  //PARAMETROS PLAYER
  life = 100;
  fluid = 100;
  food = 100;
  //FIM PARAMETROS PLAYER
  //
  //INTERFACE
  lifeBar = new BarDraw(barposX,barposY,barW,barH,#D80000,#00D887);
  fluidBar = new BarDraw(barposX,barposY + barDis,barW,barH,#90EAFF,#90C1FF);
  foodBar = new BarDraw(barposX,barposY + barDis * 2,barW,barH,#FFC290,#BF5702);
  //FIM INTERFACE
  //
  //Variaveis Mapa
  mapMin = 0;
  mapMax = 8000;
  VectorId = 350;
  PopId = 15;
  MoveVel = 10;
  //Fim Variaveis Mapa
  //
  //Variaveis Classes
  ind = new IndividuoP(width/2, height/2);
  
  piso = new PisoTerra[mapMax/20][mapMax/20];
  pisoA1 = new PisoAgua[10][((mapMax/2)/20)-50];
  pisoA2 = new PisoAgua[10][((mapMax/2)/20)-50];
  
  pedraA = new PedraA[VectorId];
  pedraB = new PedraB[VectorId];
  pedraC = new PedraC[VectorId];
  pedraD = new PedraD[VectorId];
  
  plantaA = new PlantaA[VectorId];
  plantaB = new PlantaB[VectorId];
  plantaC = new PlantaC[VectorId];
  florA = new FlorA[VectorId];
  florB = new FlorB[VectorId];
  arbustoA = new ArbustoA[VectorId];
  arvores = new Arvores[VectorId];
  arbusto = new Arbusto[VectorId];
  flores = new Flores[VectorId];
  
  for(int i = 0; i < VectorId; i++){
    pedraA[i] = new PedraA(SetPos());
    pedraB[i] = new PedraB(SetPos());
    pedraC[i] = new PedraC(SetPos());
    pedraD[i] = new PedraD(SetPos());
    
    plantaA[i] = new PlantaA(SetPos());
    plantaB[i] = new PlantaB(SetPos());
    plantaC[i] = new PlantaC(SetPos());
    florA[i] = new FlorA(corVermelho, SetPos());
    florB[i] = new FlorB(corVermelho, SetPos());
    arbustoA[i] = new ArbustoA(corVerde1,SetPos());
    arvores[i] = new Arvores(SetPos());
    arbusto[i] = new Arbusto(corVerde1, SetPos(), 0);
    flores[i] = new Flores(corVermelho, SetPos(), 2);
  }
  
  populacaoH = new PopulacaoH(0.3);
  populacaoC = new PopulacaoC(0.3);
  MapaGenerator();
  //Fim Variaveis Classes
}
//FIM SETUP
void draw(){
  background(corAzul1);
  MapaDraw();
  //outros dados p/ frame  
  for(int i = 0; i < VectorId; i++){
    pedraA[i].draw();
    pedraB[i].draw();
    pedraC[i].draw();
    pedraD[i].draw();
    plantaA[i].draw();
    plantaB[i].draw();
    plantaC[i].draw();
    florA[i].draw();
    florB[i].draw();
    arbustoA[i].draw();
    arvores[i].draw();
    arbusto[i].draw();
    flores[i].draw();
  }
  
  statusDegree();
  
  populacaoH.draw();
  populacaoC.draw();
  
  lifeBar.draw(life);
  fluidBar.draw(fluid);
  foodBar.draw(food);
  ind.draw();
}
//FIM DRAW
//
//Movimento
void keyPressed(){
  switch (keyCode){
      case UP:
        float[] setpos1 = {0, MoveVel};
        MoveGeral(setpos1);
      break;
      case DOWN:
        float[] setpos2 = {0, MoveVel*-1};
        MoveGeral(setpos2);
      break;
      case LEFT:
        float[] setpos3 = {MoveVel, 0};
        MoveGeral(setpos3);
      break;
      case RIGHT:
        float[] setpos4 = {MoveVel*-1, 0};
        MoveGeral(setpos4);
      break;
    }
}
