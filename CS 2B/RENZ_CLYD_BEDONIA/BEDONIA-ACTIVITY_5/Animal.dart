// Animal Class

// Animal Class attributes
class Animal {
  String name;
  String kingdom;
  String dob;
  int numLegs;

  // Animal constructor
  Animal(this.name, this.kingdom, this.dob, this.numLegs);

  // Map for directions
  Map<String, String> movements = {
    "forward": "moved forward",
    "back": "moved back",
    "left": "moved left",
    "right": "moved right",
  };

  // Animal methods

  // Function for animal walk
  void walk(String direction) {
    // Checks if animal can walk
    if (numLegs <= 0) {
      print("There seems to be a mistake, the $name cannot walk.");
      return;
    }

    // Action message variable
    String? actionMessage = movements[direction];

    // Direction validation conditional
    if (actionMessage != null) {
      print("The $name $actionMessage");
    } else {
      print("The $name is confused, '$direction' is not a valid direction.");
    }
  }

  // Function for displaying animal info
  void displayInfo() {
    print("\n========== Animal Info =========");
    print("Name:             $name");
    print("Kingdom:          $kingdom");
    print("Date of Birth:    $dob");
    print("Number of Legs:   $numLegs");
  }
}
