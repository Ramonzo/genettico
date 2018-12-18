class DNA{
  //0 damage
  //1 velocity
  //2 vision size
  //3 tipe
  //4 color
  //5 color
  //6 color
  float[] gene;
  int geneSize = 7;
  
  DNA(){
    gene = new float[geneSize];
    
    for (int i = 0; i < gene.length; i++) {
      gene[i] = random(0, 1);
    }
  }
  
  DNA crossover(float[] Pai){
    DNA filho = new DNA();
    
    filho.gene = Pai;
    
    return filho;
  }

  void mutar(float taxaMutacao) {
    for (int i=0; i < gene.length; i++) {
      if (random(1) < taxaMutacao) {
        gene[i] = random(0,1);
      }
    }
  }
}
