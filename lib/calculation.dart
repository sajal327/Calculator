import 'package:math_expressions/math_expressions.dart';

double num1 = 0.0;
double num2 = 0.0;
var input = "";
var operation = "";
var output = "";
var hideInput = false;

onBtnClick(value){
  print(value);
  if(value == "AC"){
    input = '';
    output = '';
  }
  else if(value == "Del"){
    if(input.isNotEmpty) {
      input = input.substring(0,input.length - 1);
    }
  }
  else if(value == "="){
    var userInput = input;
    userInput = input.replaceAll("x","*");
    Parser p = Parser();
    Expression expression = p.parse(userInput);
    ContextModel cm = ContextModel();
    var finalValue = expression.evaluate(EvaluationType.REAL, cm);
    output = finalValue.toStringAsFixed(3);
    if (output.endsWith(".000")){
      output = output.substring(0,output.length - 4);
    }
    hideInput = true;
  }
  else{
    input = input + value;
    hideInput = false;
  }
}