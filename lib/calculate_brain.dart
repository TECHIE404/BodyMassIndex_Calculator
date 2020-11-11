import 'dart:math';

class CalCulatorBrain {
  final int heightb;
  final int weightb;
  double _bmi;

  CalCulatorBrain({this.heightb, this.weightb});
  String calculateBMI() {
    _bmi = weightb / pow(heightb / 100, 2);
    print(_bmi);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higer than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more!';
    }
  }
}
