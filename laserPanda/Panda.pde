class Panda {
  
  // Structure as arrays.
  int[] hGts {(int) random(headGts.length), (int) random(headGts.length)};
  String[] hGtNames = { headGts[hGts[0]], headGts[hGts[0]]};
  int[] bGts {(int) random(bodyGts.length), (int) random(bodyGts.length)};
  String[] bGtNames = {bodyGts[bGts[0]], bodyGts[bGts[0]]};
  int[] lGts {(int) random(legsGts.length), (int) random(legsGts.length)};
  String[]lGtNames = {legsGts[lGts[0]],legsGts[lGts[0]]};
  
  /*
   * displayGeno Prints the current genotypes of the Panda
   *
   * param @request a string containing at least "H", "L", and/or "B" for the request
   */
  void displayGeno(String request) {
    String response = ""
    if (request.contains("h") || request.contains("H")) {
      response += "Head genotypes: " + hGtNames[0] + " & " + hGtNames[1] + "\n";
    }
    if (request.contains("b") || request.contains("B")) {
      response += "Body genotypes: " + bGtNames[0] + " & " + bGtNames[1] + "\n";
    }
    if (request.contains("l") || request.contains("L")) {
      response += "Legs genotypes: " + lGtNames[0] + " & " +lGtNames[1] + "\n";
    }
    print(response);
  }
  
  String getPheno(String trait) { // Take in a trait.
    if (trait = "head") return headGts[max(hGts)];
    if (trait = "body") return bodyGts[max(bGts)];
    if (trait = "legs") return legsGts[max(lGts)];
    else return "Error";
  }
}
