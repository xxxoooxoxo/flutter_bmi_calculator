
import 'dart:math';

class CalculatorBrain {

  CalculatorBrain(this.height, this.weight);

  final int height;
  final int weight;
  double _BMI;

  String calculateBMI(){
    _BMI = weight / pow(height * 0.39, 2) * 703;
    return _BMI.toStringAsFixed(1);
  }

  String getResult(){
    if (_BMI >= 25){
      return 'Overweight';
    }
    else if(_BMI > 18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if (_BMI >= 25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    else if(_BMI > 18.5){
      return 'You have a normal body weight. Good Job!';
    }
    else{
      return 'You have a lower than normal body weight. Try to eat a bit more';
    }
  }

}