// Enumeration for gender selection
enum Sex {
  male, // Represents male gender
  female, // Represents female gender
}

// User body model class to hold user data for BMI calculation
class BodyModel {
  Sex sex; // The user's gender
  int height; // The user's height in centimeters
  int weight; // The user's weight in kilograms
  int age; // The user's age in years

  // Constructor for the BodyModel class
  BodyModel({
    required this.sex, // Required parameter for gender
    required this.height, // Required parameter for height
    required this.weight, // Required parameter for weight
    required this.age, // Required parameter for age
  });
}
