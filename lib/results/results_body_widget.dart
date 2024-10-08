// Importing the Flutter material design library for UI components
import 'package:flutter/material.dart';
// Importing the Palette class for color constants
import '../palette.dart';
// Importing the ResultContentWidget to display the result content
import 'package:myapp/results/results_content_widget.dart';

// A stateless widget that represents the body of the result screen
class ResultBodyWidget extends StatelessWidget {
  // Constructor for ResultBodyWidget, requiring a result parameter
  const ResultBodyWidget({
    super.key, // Allows for a key to be passed for widget identification
    required this.result, // Required parameter for the result value
  });

  // Final variable to hold the result value
  final double result;

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette
          .background, // Sets the background color using the Palette class
      width: double
          .infinity, // Makes the container take the full width of its parent
      child: Padding(
        padding:
            const EdgeInsets.all(72.0), // Adds padding around the child widget
        child:
            ResultContentWidget(result: result), // Displays the result content
      ),
    );
  }
}
