double calculateBMI(double heightCm, double weightKg) {
  // Convert height from cm to meters
  double heightM = heightCm / 100;

  // Calculate BMI
  double bmi = weightKg / (heightM * heightM);
  return bmi;
}
