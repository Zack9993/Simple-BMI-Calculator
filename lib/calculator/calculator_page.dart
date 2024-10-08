// Importing necessary packages and modules
import 'package:myapp/calculator/calculator_body.dart'; // Importing the CalculatorBody widget
import 'package:flutter/material.dart'; // Importing Flutter's material design library
import 'package:myapp/body_model.dart'; // Importing the BodyModel class to hold user data
import 'package:myapp/palette.dart'; // Importing the Palette class for color constants

// A stateless widget that represents the calculator page of the BMI calculator
class CalculatorPage extends StatelessWidget {
  // Constructor for CalculatorPage, requiring a title
  CalculatorPage({
    Key? key, // Optional key for widget identification
    required this.title, // Required parameter for the page title
  }) : super(key: key);

  final String title; // The title of the calculator page

  // Initializing a BodyModel instance with default values
  final BodyModel model = BodyModel(
    sex: Sex.male, // Default sex set to male
    height: 183, // Default height in centimeters
    weight: 74, // Default weight in kilograms
    age: 19, // Default age in years
  );

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // Sets the title of the app bar
        backgroundColor: Palette
            .background, // Sets the background color using the Palette class
      ),
      body: CalculatorBody(
          model:
              model), // Passes the model to the CalculatorBody for user input
    );
  }
}
