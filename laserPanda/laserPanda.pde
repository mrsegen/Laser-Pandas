/*
 * This is inspired by the original Laser Pandas developed by
 * Shawn Cornally: http://shawncornally.com/wordpress/?p=2499
 * and his "broots" intro to OOP:
 * http://shawncornally.com/wordpress/?p=3680
 *
 * This version is being developed by students in South Hamilton's
 * "current science" course:
 * http://leifsegen.com/schoolblog/courses/current-science/
 * 
 * Contact: mr.segen@gmail.com
 */

final String[] headGts = {"Laser Eyes (1/12)",
        "Large Brain (2/12)",
        "Demon Horns (3/12)",
        "Invisible (4/12)",
        "Rebel Pilot (5/12)",
        "Top Hat (6/12)",
        "Gills (7/12)",
        "Snout (8/12)",
        "No Teeth (9/12)",
        "Deaf (10/12)",
        "Can’t smell (11/12)",
        "Blind (12/12)"};

final String[] bodyGts = {"Demon Wings (1/8)",
        "Rebel Pilot Armor (2/8)",
        "Extra Legs (3/8)",
        "Scuba Tank (4/8)",
        "Invisible (5/8)",
        "Camouflage (6/8)",
        "Porcupine Quills (7/8)",
        "Normal (8/8)"};

final String[] legsGts = {"Invisible (1/9)",
        "Shotgun (2/9)",
        "Crab Claws (3/9)",
        "Hooks (4/9)",
        "Flippers (5/9)",
        "Thumbs (6/9)",
        "Claws (7/9)",
        "Normal (8/9)",
        "No Claws (9/9)"};

Ranch ranch = new Ranch();

int numRounds = 3;
int currentRound = 0;

panda sven = new panda("Svan");
panda glenn = new panda("Glenn");

void setup(){
  ranch.addPanda(new panda("Steve"));
  ranch.addPanda(new panda("Garth"));
  ranch.addPanda(new panda("Jamie"));
  
  for (panda p : ranch.pandas) {
    p.printPheno();
    println("------");
  }
}

void draw(){
  if (currentRound < numRounds) { // Limit number of times this is run for nnow.
    
    // Meaningless code to test coherence 
    ranch.get(0).mateWith(ranch.get(ranch.pandas.size()-1));
    ranch.printAll();
    
    currentRound ++;
  }
}
