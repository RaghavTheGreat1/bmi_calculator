class BmiFunctionality {

final double weight;
final double height;
double _bmiResult; 

BmiFunctionality({this.weight, this.height});

String bmiCalculation () {
  _bmiResult = weight/((height/100) * (height/100));
  return _bmiResult.toStringAsFixed(2);
}

String bmiResultText () {
  if (_bmiResult >= 25) {
      return 'Overweight';
    } else if (_bmiResult > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }

}

String bmiInterpretation() {
    if (_bmiResult >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmiResult >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }



}