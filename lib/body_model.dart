// Importing the Dart math library for mathematical functions
import 'dart:math';

// Importing the BodyModel class to access user body data
import 'package:bmi_calculator/body_model.dart';

// Function to calculate the Body Mass Index (BMI)
// It takes a BodyModel object as a required parameter
double calculateBMI({required BodyModel bodyModel}) {
  // BMI formula: weight (kg) / (height (m) ^ 2)
  // The height is converted from centimeters to meters by dividing by 100
  return (bodyModel.weight) / pow(bodyModel.height / 100, 2);
}
