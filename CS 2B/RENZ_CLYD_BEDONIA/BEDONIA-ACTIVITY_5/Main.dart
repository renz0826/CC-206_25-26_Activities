// import classes
import 'Animal.dart';
import 'Pet.dart';

// Main function
void main() {
  // -- The Zoo --

  // Zoo list
  List<Animal> ZOO = [
    Animal("Barbary Lion", "Chordate", "2010", 4),
    Animal("Red-Eyed Tree Frog", "Chordate", "2019", 4),
    Animal("Giant Pacific Octopus", "Mollusk", "2015", 8),
    Animal("Giant Clam", "Mollusk", "2022", 0),
    Animal("Portuguese Man O' War", "Cnidarian", "2023", 0),
  ];

  // Zoo iteration
  print("=== Welcome to the Zoo ===\n");

  print("This zoo is filled with diverse creatures!");
  for (Animal currentAnimal in ZOO) {
    currentAnimal.displayInfo();
  }

  print("\nWow! the animals started moving!\n");

  for (Animal currentAnimal in ZOO) {
    currentAnimal.walk("forward");
  }

  // -- The Pet Home --

  // Pet Home list
  List<Pet> PET_HOME = [
    // Using the default constructor
    Pet("Bulldog", "Chordate", "2019", 4, 10),

    // Using the named constructor
    Pet.requiringNickName("Bulldog", "Chordate", "2021", 4, "Grumpy"),

    Pet.requiringNickName("Cat", "Chordate", "2023", 4, "Mittens"),
  ];

  // Decreasing the kindness value of Grumpy
  print("\n=== Welcome to the Pet Home ===\n");

  // Decreasing the kindness value of Grumpy
  print("=== Decreasing Kindness ===\n");
  PET_HOME[0].kick(50);

  // Increasing the kindness value of Grumpy and Mittens
  print("=== Decreasing Kindness ===\n");
  PET_HOME[1].pet(1100);
  PET_HOME[2].play(1400);
}
