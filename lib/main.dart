// Importing necessary packages
import 'package:bmi_calculator/calculator/calculator_page.dart'; // Importing the CalculatorPage widget from the BMI calculator package
import 'package:flutter/material.dart'; // Importing Flutter's material design library for UI components
import 'package:flutter/services.dart';
import 'package:myapp/calculator/calculator_page.dart'; // Importing Flutter services to control system-level features

// The main function is the entry point of the Flutter application
void main() {
  // Ensures that the Flutter engine is initialized before running the app
  WidgetsFlutterBinding.ensureInitialized();

  // Prevents the app from being displayed in landscape orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Only allows portrait mode
  ]);

  // Runs the MyApp widget, which is the root of the application
  runApp(const MyApp());
}

// MyApp is a stateless widget that serves as the root of the application
class MyApp extends StatelessWidget {
  // Constructor for MyApp, allowing for optional key parameter
  const MyApp({Key? key}) : super(key: key);

  // The build method describes the part of the user interface represented by this widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator', // Sets the title of the application
      theme: ThemeData(
        primarySwatch: Colors.blue, // Sets the primary color theme to blue
        visualDensity: VisualDensity.adaptivePlatformDensity, // Adjusts the visual density based on the platform
      ),
      home: CalculatorPage(title: 'BMI CALCULATOR'), // Sets the home page of the app to CalculatorPage with a title
    );
  }
}
