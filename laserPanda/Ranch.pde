// A list of Panda objects
class Ranch {
  ArrayList<panda> pandas; // An ArrayList for all the pandas
  
  Ranch() {
    pandas = new ArrayList<panda>(); // Initialize the list
  }
  
  panda get(int i) {
    return pandas.get(i);
  }
  
  void addPanda(panda p) {
    pandas.add(p);
  }
  
  void printAll() {
    for (panda p : pandas) {
      p.printPheno();
      println("------");
    }
  }
}
