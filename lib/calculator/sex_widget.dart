// Importing necessary packages
import 'package:bmi_calculator/palette.dart'; // Importing the Palette class for color constants
import 'package:flutter/material.dart'; // Importing Flutter's material design library

import '../body_model.dart'; // Importing the BodyModel class for sex enumeration

// A stateless widget that represents a gender selection interface
class SexWidget extends StatelessWidget {
  const SexWidget({
    super.key,
    required this.sex, // Required parameter for the current sex
    required this.onMaleTap, // Callback for when the male option is tapped
    required this.onFemaleTap, // Callback for when the female option is tapped
  });

  final Sex sex; // Current selected sex (male or female)
  final VoidCallback
      onMaleTap; // Function to call when the male option is selected
  final VoidCallback
      onFemaleTap; // Function to call when the female option is selected

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.width - 48) /
          2, // Sets the height based on screen width
      child: Row(
        children: [
          // Male selection option
          Expanded(
            child: GestureDetector(
              onTap: onMaleTap, // Calls the male selection function when tapped
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      5), // Rounds the corners of the container
                  color: sex == Sex.male
                      ? Palette
                          .cardBackgroundActive // Active color if male is selected
                      : Palette
                          .cardBackgroundInactive, // Inactive color otherwise
                ),
                height: double
                    .infinity, // Makes the container take the full height of its parent
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centers the children in the column
                  children: [
                    Icon(
                      Icons.male_rounded, // Male icon
                      size: 100, // Size of the icon
                      color: sex == Sex.male
                          ? Palette
                              .textActive // Active text color if male is selected
                          : Palette
                              .textInactive, // Inactive text color otherwise
                    ),
                    Text(
                      'MALE', // Label for the male option
                      style: TextStyle(
                        fontSize: 23, // Font size for the label
                        fontWeight: FontWeight.w600, // Medium font weight
                        color: sex == Sex.male
                            ? Palette
                                .textActive // Active text color if male is selected
                            : Palette
                                .textInactive, // Inactive text color otherwise
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 5, // Spacer between male and female options
          ),
          // Female selection option
          Expanded(
            child: GestureDetector(
              onTap:
                  onFemaleTap, // Calls the female selection function when tapped
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      5), // Rounds the corners of the container
                  color: sex == Sex.female
                      ? Palette
                          .cardBackgroundActive // Active color if female is selected
                      : Palette
                          .cardBackgroundInactive, // Inactive color otherwise
                ),
                height: double
                    .infinity, // Makes the container take the full height of its parent
                child: Column(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centers the children in the column
                  children: [
                    Icon(
                      Icons.female_rounded, // Female icon
                      size: 100, // Size of the icon
                      color: sex == Sex.female
                          ? Palette
                              .textActive // Active text color if female is selected
                          : Palette
                              .textInactive, // Inactive text color otherwise
                    ),
                    Text(
                      'FEMALE', // Label for the female option
                      style: TextStyle(
                        fontSize: 23, // Font size for the label
                        fontWeight: FontWeight.w600, // Medium font weight
                        color: sex == Sex.female
                            ? Palette
                                .textActive // Active text color if female is selected
                            : Palette
                                .textInactive, // Inactive text color otherwise
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
