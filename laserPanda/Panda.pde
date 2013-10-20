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
    
    // Assign random genotypes
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
    println(name+"'s Head: "+ headGts[min(hGts)]);
    println(name+"'s Body: "+ bodyGts[min(bGts)]);
    println(name+"'s Legs: "+ legsGts[min(lGts)]);
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
    
  }
  
//  void attack(panda otherGuy){
//    if(!otherGuy.defend()){
//      int pain = strength - otherGuy.armor;
//      otherGuy.sufferInjury(pain);
//      println(name+" hit "+otherGuy.name+" for "+pain+" damage.");
//    }
//    else println(name+" missed!");
//  }
  
//  boolean defend(){
//    int dieRoll = (int) random(100);
//    if(dieRoll>defense+luck){
//      return false;
//    }
//    else{
//      return true;
//    }
//  }
  
//  void sufferInjury(int damage){
//    health -= damage;
//  }
  
  String nickname () {
    return name.substring(0,3);
  }
  
//  int metaDefense() {
//    return defense + armor + luck;
//  }
}
