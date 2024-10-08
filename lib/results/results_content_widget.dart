// Importing the Flutter material design library for UI components
import 'package:flutter/material.dart';

// Importing the Palette class for color constants
import '../palette.dart';

// A stateless widget that displays the content of the result screen
class ResultContentWidget extends StatelessWidget {
  // Constructor for ResultContentWidget, requiring a result parameter
  const ResultContentWidget({
    super.key, // Allows for a key to be passed for widget identification
    required this.result, // Required parameter for the result value
  });

  // Final variable to hold the result value
  final double result;

  // Method to determine the color based on the BMI result
  Color resultColor() {
    if (result < 18.5) {
      return Palette.underweightResult; // Color for underweight
    } else if (result > 25) {
      return Palette.overWeightResult; // Color for overweight
    } else {
      return Palette.normalResult; // Color for normal weight
    }
  }

  // Method to provide a diagnosis based on the BMI result
  String diagnosis() {
    if (result < 18.5) {
      return 'UNDERWEIGHT'; // Diagnosis for underweight
    } else if (result > 25) {
      return 'OVERWEIGHT'; // Diagnosis for overweight
    } else {
      return 'NORMAL'; // Diagnosis for normal weight
    }
  }

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween, // Space elements evenly within the column
      children: [
        // Text widget for displaying the diagnosis
        Text(
          diagnosis(),
          style: TextStyle(
            color: resultColor(), // Sets the color based on the result
            fontWeight: FontWeight.w600, // Bold font weight
            fontSize: 25, // Font size for the diagnosis
          ),
        ),
        // Text widget for displaying the numeric result formatted to one decimal place
        Text(
          result.toStringAsFixed(1), // Formats the result to one decimal place
          style: const TextStyle(
            color: Palette.textActive, // Active text color
            fontWeight: FontWeight.w600, // Bold font weight
            fontSize: 100, // Large font size for the BMI value
          ),
        ),
        // A column to display the normal BMI range information
        const Column(
          children: [
            Text(
              'Normal BMI range:', // Label for the normal BMI range
              style: TextStyle(
                color: Palette.textInactive, // Inactive text color
                fontWeight: FontWeight.w500, // Medium font weight
                fontSize: 20, // Font size for the label
              ),
            ),
            SizedBox(height: 8), // Spacer between the two text widgets
            Text(
              '18.5 - 25 kg/m2', // Normal BMI range values
              style: TextStyle(
                color: Palette.textActive, // Active text color
                fontWeight: FontWeight.w500, // Medium font weight
                fontSize: 20, // Font size for the range
              ),
            ),
          ],
        ),
      ],
    );
  }
}
