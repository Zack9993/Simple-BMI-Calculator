// Importing necessary packages
import 'package:myapp/palette.dart'; // Importing the Palette class for color constants
import 'package:flutter/material.dart'; // Importing Flutter's material design library

// A stateless widget that represents an integer picker for selecting values
class IntPickerWidget extends StatelessWidget {
  const IntPickerWidget({
    super.key,
    required this.title, // Required parameter for the title of the picker
    required this.onIncreaseTap, // Callback for when the increase button is tapped
    required this.onDecreaseTap, // Callback for when the decrease button is tapped
    required this.value, // Current integer value to display
  });

  final String title; // Title of the picker
  final VoidCallback
      onIncreaseTap; // Function to call when the increase button is tapped
  final VoidCallback
      onDecreaseTap; // Function to call when the decrease button is tapped
  final int value; // Current value displayed in the picker

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(5), // Rounds the corners of the container
        color: Palette
            .cardBackgroundInactive, // Sets the background color using the Palette class
      ),
      height: double
          .infinity, // Makes the container take the full height of its parent
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centers the children in the column
        children: [
          // Title of the picker, displayed in uppercase
          Text(
            title.toUpperCase(),
            style: const TextStyle(
              fontSize: 23, // Font size for the title
              fontWeight: FontWeight.w600, // Medium font weight
              color: Palette.textInactive, // Inactive text color
            ),
          ),
          // Displays the current integer value
          Text(
            value
                .toString(), // Converts the integer value to a string for display
            style: const TextStyle(
              fontSize: 50, // Large font size for the value
              fontWeight: FontWeight.w800, // Bold font weight
              color: Palette.textActive, // Active text color
            ),
          ),
          // Row containing the increase and decrease buttons
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // Spaces the buttons evenly
            children: [
              // Decrease button
              InkWell(
                onTap: onDecreaseTap, // Calls the decrease function when tapped
                child: Container(
                  width: 56, // Width of the button
                  height: 56, // Height of the button
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Makes the button circular
                    color: Palette
                        .cardBackgroundActive, // Sets the background color for the button
                  ),
                  child: const Icon(
                    Icons.remove, // Icon for the decrease button
                    color: Palette.textActive, // Color of the icon
                  ),
                ),
              ),
              // Increase button
              InkWell(
                onTap: onIncreaseTap, // Calls the increase function when tapped
                child: Container(
                  width: 56, // Width of the button
                  height: 56, // Height of the button
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Makes the button circular
                    color: Palette
                        .cardBackgroundActive, // Sets the background color for the button
                  ),
                  child: const Icon(
                    Icons.add, // Icon for the increase button
                    color: Palette.textActive, // Color of the icon
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
