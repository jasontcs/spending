import 'package:flutter_test/flutter_test.dart';

import 'package:calculator/calculator.dart';

void main() {
  void expectCalculator(
    CalculatorValue value,
    String? first,
    CalculatorOperator? operator,
    String? second,
  ) {
    expect(value.first, first);
    expect(value.operator, operator);
    expect(value.second, second);
  }

  test('1+1', () {
    final calculator = Calculator()
      ..input(CalculatorNumber.one)
      ..operate(CalculatorOperator.add)
      ..input(CalculatorNumber.one);
    expectCalculator(calculator.value, '1', CalculatorOperator.add, '1');
  });
  test('1+1=', () {
    final calculator = Calculator()
      ..input(CalculatorNumber.one)
      ..operate(CalculatorOperator.add)
      ..input(CalculatorNumber.one)
      ..calculate();
    expectCalculator(calculator.value, '2', null, null);
  });

  test('.1', () {
    final calculator = Calculator()
      ..dot()
      ..input(CalculatorNumber.one);
    expectCalculator(calculator.value, '0.1', null, null);
  });

  test('.1<', () {
    final calculator = Calculator()
      ..dot()
      ..input(CalculatorNumber.one)
      ..remove();
    expectCalculator(calculator.value, '0.', null, null);
  });
  test('.13', () {
    final calculator = Calculator()
      ..dot()
      ..input(CalculatorNumber.one)
      ..input(CalculatorNumber.three);

    expectCalculator(calculator.value, '0.13', null, null);
  });
  test('.13<2++-.1x', () {
    final calculator = Calculator()
      ..dot()
      ..input(CalculatorNumber.one)
      ..input(CalculatorNumber.three)
      ..remove()
      ..input(CalculatorNumber.two)
      ..operate(CalculatorOperator.add)
      ..operate(CalculatorOperator.add)
      ..operate(CalculatorOperator.minus)
      ..dot()
      ..input(CalculatorNumber.one)
      ..operate(CalculatorOperator.multiply);

    expectCalculator(
        calculator.value, '0.02', CalculatorOperator.multiply, null);
  });

  test('1/7', () {
    final calculator = Calculator()
      ..input(CalculatorNumber.one)
      ..operate(CalculatorOperator.divide)
      ..input(CalculatorNumber.seven)
      ..calculate();

    expectCalculator(calculator.value, '0.14', null, null);
  });
}
