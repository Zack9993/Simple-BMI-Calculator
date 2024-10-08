// Importing necessary packages and modules
import 'package:myapp/body_model.dart'; // Importing the BodyModel class
import 'package:myapp/palette.dart'; // Importing the Palette class for color constants
import 'package:myapp/results/results_body_widget.dart'; // Importing the ResultBodyWidget to display the result
import 'package:flutter/material.dart'; // Importing Flutter's material design library

import '../bmi_calculator.dart'; // Importing the main BMI calculation function

// A stateless widget that represents the result page of the BMI calculator
class ResultPage extends StatelessWidget {
  final BodyModel model; // The BodyModel instance containing user data

  // Constructor for ResultPage, requiring a BodyModel instance
  const ResultPage({
    super.key, // Allows for a key to be passed for widget identification
    required this.model, // Required parameter for the BodyModel
  });

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    // Calculate the BMI using the provided BodyModel
    final result = calculateBMI(bodyModel: model);

    return Scaffold(
      appBar: AppBar(
        title: const Text('RESULT'), // Title of the app bar
        backgroundColor: Palette.background, // Background color for the app bar
        leading: IconButton(
          onPressed: () {
            // Navigate back to the previous page when the back button is pressed
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios), // Back arrow icon
        ),
      ),
      body: ResultBodyWidget(
          result: result), // Display the result in the ResultBodyWidget
    );
  }
}
