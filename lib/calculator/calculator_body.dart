// Importing necessary packages and modules
import 'package:myapp/calculator/calculate_button.dart'; // Importing the CalculateButton widget
import 'package:flutter/material.dart'; // Importing Flutter's material design library
import 'package:myapp/calculator/height_widget.dart'; // Importing the HeightWidget for height input
import 'package:myapp/calculator/int_picker_widget.dart'; // Importing the IntPickerWidget for integer inputs
import 'package:myapp/calculator/sex_widget.dart'; // Importing the SexWidget for gender selection
import 'package:myapp/results/results_page.dart'; // Importing the ResultPage to display results
import 'package:myapp/body_model.dart'; // Importing the BodyModel class to hold user data
import 'package:myapp/palette.dart'; // Importing the Palette class for color constants

// A stateful widget that represents the body of the BMI calculator
class CalculatorBody extends StatefulWidget {
  const CalculatorBody({
    super.key,
    required this.model, // Required parameter for the BodyModel
  });

  final BodyModel model; // The BodyModel instance containing user data

  @override
  State<CalculatorBody> createState() =>
      _CalculatorBodyState(); // Creates the state for this widget
}

// The state class for CalculatorBody
class _CalculatorBodyState extends State<CalculatorBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette
          .background, // Sets the background color using the Palette class
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 24.0), // Adds horizontal padding
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // Space elements evenly within the column
          children: [
            // Sex selection widget
            SexWidget(
              sex: widget.model.sex, // Passes the current sex from the model
              onMaleTap: () => setState(() {
                // Set sex to male and update the state
                widget.model.sex = Sex.male;
              }),
              onFemaleTap: () => setState(() {
                // Set sex to female and update the state
                widget.model.sex = Sex.female;
              }),
            ),
            // Height input widget
            HeightWidget(
              height: widget
                  .model.height, // Passes the current height from the model
              onHeightChanged: (height) => setState(() {
                // Set height and round to Int, updating the state
                widget.model.height = height.toInt();
              }),
            ),
            // Row for weight and age input widgets
            SizedBox(
              height: (MediaQuery.of(context).size.width - 48) /
                  2, // Sets height based on screen width
              child: Row(
                children: [
                  Expanded(
                    // Weight input widget
                    child: IntPickerWidget(
                      title: 'Weight', // Title for the weight picker
                      onIncreaseTap: () => setState(() {
                        // Increase weight and update the state
                        widget.model.weight++;
                      }),
                      onDecreaseTap: () => setState(() {
                        // Decrease weight and update the state
                        widget.model.weight--;
                      }),
                      value: widget.model
                          .weight, // Passes the current weight from the model
                    ),
                  ),
                  const SizedBox(width: 5), // Spacer between the two widgets
                  Expanded(
                    // Age input widget
                    child: IntPickerWidget(
                      title: 'Age', // Title for the age picker
                      onIncreaseTap: () => setState(() {
                        // Increase age and update the state
                        widget.model.age++;
                      }),
                      onDecreaseTap: () => setState(() {
                        // Decrease age and update the state
                        widget.model.age--;
                      }),
                      value: widget
                          .model.age, // Passes the current age from the model
                    ),
                  ),
                ],
              ),
            ),
            // Calculate button to navigate to the result page
            CalculateButton(
              onTap: () {
                // Navigate to Result Page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                        model:
                            widget.model), // Passes the model to the ResultPage
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
