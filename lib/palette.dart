// Importing the Flutter material design library
import 'package:flutter/material.dart';

// A class to hold color constants used throughout the application
class Palette {
  // Background color for the main application
  static const background = Color(0xFF0A0D22); // Dark blue-black color

  // Background color for inactive cards (e.g., when not selected)
  static const cardBackgroundInactive =
      Color(0xFF121428); // Slightly lighter dark color

  // Background color for active cards (e.g., when selected)
  static const cardBackgroundActive =
      Color(0xFF1D1F33); // Darker shade for active state

  // Text color for inactive elements (e.g., labels or text on inactive cards)
  static const textInactive = Color(0xFF8D8E99); // Light gray color

  // Text color for active elements (e.g., labels or text on active cards)
  static const textActive = Color(0xFFFFFFFF); // White color for high contrast

  // Color for action buttons or highlights (e.g., calculate button)
  static const action = Color(0xFFEC1554); // Bright pinkish-red color

  // Color representing a normal BMI result (healthy range)
  static const normalResult =
      Color(0xFF4BE57A); // Green color for normal results

  // Color representing an underweight BMI result
  static const underweightResult =
      Color(0xFFE5D94B); // Yellow color for underweight results

  // Color representing an overweight BMI result
  static const overWeightResult =
      Color(0xFFE54B4B); // Red color for overweight results
}
