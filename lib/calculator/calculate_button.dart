// Importing the Flutter material design library for UI components
import 'package:flutter/material.dart';

// Importing the Palette class for color constants
import '../palette.dart';

// A stateless widget that represents a button for calculating BMI
class CalculateButton extends StatelessWidget {
  // Constructor for CalculateButton, requiring an onTap callback
  const CalculateButton({
    super.key, // Allows for a key to be passed for widget identification
    required this.onTap, // Required parameter for the callback function when the button is tapped
  });

  // Final variable to hold the callback function
  final VoidCallback onTap;

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height /
          12, // Sets the height based on the screen size
      width: double
          .infinity, // Makes the container take the full width of its parent
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(5), // Rounds the corners of the button
        color:
            Palette.action, // Sets the background color using the Palette class
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.white.withOpacity(
              0.10)), // Sets the overlay color when the button is pressed
        ),
        onPressed: onTap, // Calls the onTap function when the button is pressed
        child: const Text(
          'CALCULATE YOUR BMI', // Text displayed on the button
          style: TextStyle(
            color: Palette
                .textActive, // Sets the text color using the Palette class
            fontSize: 20, // Font size for the button text
          ),
        ),
      ),
    );
  }
}
