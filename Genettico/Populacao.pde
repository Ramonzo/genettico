class PopulacaoH{
  //IA Animals
  Herbivoro[] herbivoro;
  //Variables
  float txmutacao;
  
  PopulacaoH(float txmutacao){
    this.txmutacao = txmutacao;
    herbivoro = new Herbivoro[PopId];
    
    for(int i = 0; i < PopId; i++){
      herbivoro[i] = new Herbivoro(new DNA());
    }
  }
  void Reproducao(){
    for(int i = 0; i < PopId; i++){
      for(int j = 0; j < PopId; j++){
        if(j != i){
          if(herbivoro[i].raio <= herbivoro[j].raio){
            if(dist(herbivoro[i].SendPos()[0],herbivoro[i].SendPos()[1],herbivoro[j].SendPos()[0],herbivoro[j].SendPos()[1]) <= herbivoro[i].raio){
              Add(i,j);
              break;
            }
          }else{
            if(dist(herbivoro[i].SendPos()[0],herbivoro[i].SendPos()[1],herbivoro[j].SendPos()[0],herbivoro[j].SendPos()[1]) <= herbivoro[j].raio){
              Add(i,j);
              break;
            }
          }
        }
      }
    }
  }
  void Add(int hA, int hB){
    for(int i = 0; i < PopId; i++){
      if(i != hA && i != hB){
        float[] novogene = new float[herbivoro[i].dna.gene.length];
        for(int j = 0; j < herbivoro[i].dna.gene.length; j++){
        float x = random(0,1);
          if(x < 0.5){
            novogene[j] = herbivoro[hA].dna.gene[j];
          }else{
            novogene[j] = herbivoro[hB].dna.gene[j];
          }
        }
        DNA novoDna = new DNA();
        herbivoro[i] = new Herbivoro(novoDna.crossover(novogene));
        break;
      }
    }
  }
  
  void Selecao(int hA){
    float[] duplogene = new float[herbivoro[hA].dna.gene.length*2];
    int geneid = 0;
    for(int i = 0; i < PopId; i++){
      if(i != hA){
        for(int j = 0; j < herbivoro[i].dna.gene.length; j++){
            duplogene[geneid] = herbivoro[hA].dna.gene[j];
            geneid++;
        }
      }
    }
    float[] novogene = new float[herbivoro[hA].dna.gene.length];
    for(int j = 0; j < herbivoro[hA].dna.gene.length; j++){
        float x = random(0,1);
        if(x < 0.5){
          novogene[j] = duplogene[j];
        }else{
          novogene[j] = duplogene[j + herbivoro[hA].dna.gene.length];
        }
    }
        DNA novoDna = new DNA();
        herbivoro[hA] = new Herbivoro(novoDna.crossover(novogene));
  }
  void MovePop(float[] movepop){
    for(int i = 0; i < PopId; i++){
      herbivoro[i].Move(movepop);
    }
  }
  void draw(){
    for(int i = 0; i < PopId; i++){
      herbivoro[i].draw();
    }
  }
}
class PopulacaoC{
  //IA Animals
  Carnivoro[] carnivoro;
  //Variables
  float txmutacao;
  
  PopulacaoC(float txmutacao){
    this.txmutacao = txmutacao;
    carnivoro = new Carnivoro[PopId];
    
    for(int i = 0; i < PopId; i++){
      carnivoro[i] = new Carnivoro(new DNA());
    }
  }
  void Reproducao(){
    for(int i = 0; i < PopId; i++){
      for(int j = 0; j < PopId; j++){
        if(j != i){
          if(carnivoro[i].raio <= carnivoro[j].raio){
            if(dist(carnivoro[i].SendPos()[0],carnivoro[i].SendPos()[1],carnivoro[j].SendPos()[0],carnivoro[j].SendPos()[1]) <= carnivoro[i].raio){
              Add(i,j);
              break;
            }
          }else{
            if(dist(carnivoro[i].SendPos()[0],carnivoro[i].SendPos()[1],carnivoro[j].SendPos()[0],carnivoro[j].SendPos()[1]) <= carnivoro[j].raio){
              Add(i,j);
              break;
            }
          }
        }
      }
    }
  }
  void Add(int hA, int hB){
    for(int i = 0; i < PopId; i++){
      if(i != hA && i != hB){
        float[] novogene = new float[carnivoro[i].dna.gene.length];
        for(int j = 0; j < carnivoro[i].dna.gene.length; j++){
        float x = random(0,1);
          if(x < 0.5){
            novogene[j] = carnivoro[hA].dna.gene[j];
          }else{
            novogene[j] = carnivoro[hB].dna.gene[j];
          }
        }
        DNA novoDna = new DNA();
        carnivoro[i] = new Carnivoro(novoDna.crossover(novogene));
        break;
      }
    }
  }
  
  void Selecao(int hA){
    float[] duplogene = new float[carnivoro[hA].dna.gene.length*2];
    int geneid = 0;
    for(int i = 0; i < PopId; i++){
      if(i != hA){
        for(int j = 0; j < carnivoro[i].dna.gene.length; j++){
            duplogene[geneid] = carnivoro[hA].dna.gene[j];
            geneid++;
        }
      }
    }
    float[] novogene = new float[carnivoro[hA].dna.gene.length];
    for(int j = 0; j < carnivoro[hA].dna.gene.length; j++){
        float x = random(0,1);
        if(x < 0.5){
          novogene[j] = duplogene[j];
        }else{
          novogene[j] = duplogene[j + carnivoro[hA].dna.gene.length];
        }
    }
        DNA novoDna = new DNA();
        carnivoro[hA] = new Carnivoro(novoDna.crossover(novogene));
  }
  void MovePop(float[] movepop){
    for(int i = 0; i < PopId; i++){
      carnivoro[i].Move(movepop);
    }
  }
  void draw(){
    for(int i = 0; i < PopId; i++){
      carnivoro[i].draw();
    }
  }
}
