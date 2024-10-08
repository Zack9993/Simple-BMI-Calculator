double calculateBMI({required BodyModel bodyModel}) {
  // Validate height and weight
  if (bodyModel.height <= 0 || bodyModel.weight <= 0) {
    throw ArgumentError('Height and weight must be greater than zero.');
  }

  return (bodyModel.weight) / pow(bodyModel.height / 100, 2);
}
