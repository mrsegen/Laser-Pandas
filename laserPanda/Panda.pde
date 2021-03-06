class panda{
  String name;
  // String sex;
  int[] hGts = new int[2];
  String[] hGtNames = new String[2];
  int[] bGts = new int[2];
  String[] bGtNames = new String[2];
  int[] lGts = new int[2];
  String[] lGtNames = new String[2];
  
  //constructor for randomly assigned qualities
  panda(String Name){
    name = Name;
    
    // Validation
//    if (Sex != "female" && Sex != "male") {
//      println("ERROR: Assign the panda as either 'female' or 'male.'");
//      return;
//    }
//    sex = Sex;
    
    // Assign random genotypes
    hGts[0] = (int) random(headGts.length);
    hGts[1] = (int) random(headGts.length);
    bGts[0] = (int) random(bodyGts.length);
    bGts[1] = (int) random(bodyGts.length);
    lGts[0] = (int) random(legsGts.length);
    lGts[1] = (int) random(legsGts.length);
    
    // Populate lists of genotypes with typed-out names
    refreshGenoNames();
    
  }
  
  //constructor with heredity
  panda(String Name, int h1, int h2, int b1, int b2, int l1, int l2){
    name = Name;
    
    // Validation
//    if (Sex != "female" && Sex != "male") {
//      println("ERROR: Assign the panda as either 'female' or 'male.'");
//      return;
//    }
//    sex = Sex;
    
    // Assign genotypes
    hGts[0] = h1;
    hGts[1] = h2;
    bGts[0] = b1;
    bGts[1] = b2;
    lGts[0] = l1;
    lGts[1] = l2;
    
    // Populate lists of genotypes with typed-out names
    refreshGenoNames();
  }
  
  void printPheno() {
    println(name+"'s Head: "+ headGts[min(hGts)] + " Genotype: " + hGtNames[0] + ", " + hGtNames[1]);
    println(name+"'s Body: "+ bodyGts[min(bGts)] + " Genotype: " + bGtNames[0] + ", " + bGtNames[1]);
    println(name+"'s Legs: "+ legsGts[min(lGts)] + " Genotype: " + lGtNames[0] + ", " + lGtNames[1]);
  }
  
  void refreshGenoNames() {
    hGtNames[0] = headGts[hGts[0]];
    hGtNames[1] = headGts[hGts[1]];
    bGtNames[0] = bodyGts[bGts[0]];
    bGtNames[1] = bodyGts[bGts[1]];
    lGtNames[0] = legsGts[lGts[0]];
    lGtNames[1] = legsGts[lGts[1]];
  }
  
  //methods
  void mateWith(panda partner) {
    // Grab randomly from each genotype pair, of each partner, for each trait
    int h1 = hGts[(int) random(2)];
    int h2 = partner.hGts[(int) random(2)];
    int b1 = bGts[(int) random(2)];
    int b2 = partner.bGts[(int) random(2)];
    int l1 = lGts[(int) random(2)];
    int l2 = partner.lGts[(int) random(2)];
    ranch.addPanda(new panda("Kid",h1,h2,b1,b2,l1,l2));
  }
  
  String nickname () {
    return name.substring(0,3);
  }
}
