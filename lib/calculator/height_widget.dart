// Importing the Flutter material design library for UI components
import 'package:flutter/material.dart';

// Importing the Palette class for color constants
import '../palette.dart';

// A stateless widget that represents a height input field using a slider
class HeightWidget extends StatelessWidget {
  const HeightWidget({
    super.key,
    required this.height, // Required parameter for the current height
    required this.onHeightChanged, // Required callback function for height changes
  });

  final int height; // Current height value
  final Function(double)
      onHeightChanged; // Callback function to handle height changes

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.width - 48) /
          2, // Sets the height based on screen width
      width: double
          .infinity, // Makes the container take the full width of its parent
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(5), // Rounds the corners of the container
        color: Palette
            .cardBackgroundInactive, // Sets the background color using the Palette class
      ),
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Centers the children in the column
        children: [
          // Label for the height input
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 23, // Font size for the label
              fontWeight: FontWeight.w600, // Medium font weight
              color: Palette.textInactive, // Inactive text color
            ),
          ),
          // Row to display height value and unit (cm)
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centers the row elements
            crossAxisAlignment:
                CrossAxisAlignment.baseline, // Aligns the baseline of text
            textBaseline:
                TextBaseline.alphabetic, // Sets the text baseline for alignment
            children: [
              // Displays the current height value
              Text(
                height
                    .round()
                    .toString(), // Converts height to string for display
                style: const TextStyle(
                  fontSize: 50, // Large font size for the height value
                  fontWeight: FontWeight.w800, // Bold font weight
                  color: Palette.textActive, // Active text color
                ),
              ),
              // Displays the unit of measurement (cm)
              const Text(
                'cm',
                style: TextStyle(
                  fontSize: 30, // Font size for the unit
                  color: Palette.textInactive, // Inactive text color
                ),
              ),
            ],
          ),
          // Slider for height input
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 24.0), // Adds horizontal padding
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 1.0, // Sets the height of the slider track
                thumbShape: const RoundSliderThumbShape(
                  enabledThumbRadius: 15, // Sets the radius of the slider thumb
                ),
              ),
              child: Slider(
                value: height
                    .toDouble(), // Converts height to double for the slider
                min: 150.0, // Minimum height value
                max: 210.0, // Maximum height value
                activeColor: Palette
                    .textActive, // Color of the active part of the slider
                inactiveColor: Palette
                    .textInactive, // Color of the inactive part of the slider
                thumbColor: Palette.action, // Color of the slider thumb
                onChanged:
                    onHeightChanged, // Calls the callback function on height change
              ),
            ),
          ),
        ],
      ),
    );
  }
}
