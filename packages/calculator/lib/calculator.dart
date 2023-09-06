library calculator;

import 'dart:async';

import 'package:decimal/decimal.dart';

enum CalculatorOperator {
  add('+'),
  minus('-'),
  multiply('×'),
  divide('÷');

  final String value;

  const CalculatorOperator(this.value);
}

enum CalculatorNumber {
  one(1),
  two(2),
  three(3),
  four(4),
  five(5),
  six(6),
  seven(7),
  eight(8),
  nine(9),
  zero(0);

  final int value;

  const CalculatorNumber(this.value);

  String get string => value.toString();
}

class CalculatorValue {
  final String? first;
  final CalculatorOperator? operator;
  final String? second;

  const CalculatorValue({
    this.first,
    this.operator,
    this.second,
  });

  CalculatorValue copyWith({
    String? first,
    CalculatorOperator? operator,
    String? second,
  }) =>
      CalculatorValue(
        first: first ?? this.first,
        operator: operator ?? this.operator,
        second: second ?? this.second,
      );
}

class CalcualtorNotInit implements Exception {}

class CalcualtorInputNotValid implements Exception {}

class Calculator {
  Calculator({
    this.initialValue,
    this.decimal = 2,
    this.autoCalculateDelay = const Duration(seconds: 2),
  }) {
    _update(CalculatorValue(first: initialValue?.toString()));
  }

  CalculatorValue? _value;
  final _controller = StreamController<CalculatorValue>();
  late final Stream<CalculatorValue> snapshot =
      _controller.stream.asBroadcastStream();
  CalculatorValue get value =>
      _value != null ? _value! : throw CalcualtorNotInit();

  final num? initialValue;
  final int decimal;
  final Duration autoCalculateDelay;

  void trySetTo(num? value) {
    if (value == null) return;
    _update(CalculatorValue(first: value.toString()));
  }

  Future<void> _update(CalculatorValue value) async {
    _controller.add(value);
    _value = value;
    if (value.second != null) {
      await Future.delayed(autoCalculateDelay);
      if (value.second != null) {
        calculate();
      }
    }
  }

  void input(CalculatorNumber number) {
    if (value.second != null) {
      _update(value.copyWith(second: value.second! + number.string));
    } else if (value.operator != null) {
      _update(value.copyWith(second: number.string));
    } else if (value.first != null) {
      _update(value.copyWith(first: value.first! + number.string));
    } else {
      _update(value.copyWith(first: number.string));
    }
  }

  void dot() {
    if (value.second != null) {
      if (value.second!.contains('.')) {
        _controller.addError(CalcualtorInputNotValid());
      } else {
        _update(value.copyWith(second: '${value.second!}.'));
      }
    } else if (value.operator != null) {
      _update(value.copyWith(second: '0.'));
    } else if (value.first != null) {
      if (value.first!.contains('.')) {
        _controller.addError(CalcualtorInputNotValid());
      } else {
        _update(value.copyWith(first: '${value.first!}.'));
      }
    } else {
      _update(value.copyWith(first: '0.'));
    }
  }

  void remove() {
    if (value.second != null) {
      final second = _removeLastChar(value.second!);
      _update(CalculatorValue(
        first: value.first,
        operator: value.operator,
        second: second,
      ));
    } else if (value.operator != null) {
      _update(CalculatorValue(
        first: value.first,
        second: value.second,
      ));
    } else if (value.first != null) {
      final first = _removeLastChar(value.first!);
      _update(CalculatorValue(
        first: first,
        operator: value.operator,
        second: value.second,
      ));
    }
  }

  String? _removeLastChar(String string) {
    if (string.length <= 1) return null;
    return string.substring(0, string.length - 1);
  }

  void clear() {
    _update(const CalculatorValue());
  }

  void operate(CalculatorOperator operator) {
    if (value.second != null) {
      final second = value.second!.endsWith('.')
          ? _removeLastChar(value.second!)!
          : value.second!;
      final result = _calculateString(value.first!, value.operator!, second);
      _update(CalculatorValue(
        first: result,
        operator: operator,
        second: null,
      ));
    } else if (value.operator != null) {
      _update(value.copyWith(operator: operator));
    } else if (value.first != null) {
      final first = value.first!.endsWith('.')
          ? _removeLastChar(value.first!)
          : value.first!;
      _update(value.copyWith(first: first, operator: operator));
    } else {
      _controller.addError(CalcualtorInputNotValid());
    }
  }

  String _calculateString(
      String first, CalculatorOperator operator, String second) {
    switch (operator) {
      case CalculatorOperator.add:
        return (Decimal.parse(first) + Decimal.parse(second))
            .round(scale: decimal)
            .toString();
      case CalculatorOperator.minus:
        return (Decimal.parse(first) - Decimal.parse(second))
            .round(scale: decimal)
            .toString();
      case CalculatorOperator.multiply:
        return (Decimal.parse(first) * Decimal.parse(second))
            .round(scale: decimal)
            .toString();
      case CalculatorOperator.divide:
        return (Decimal.parse(first) / Decimal.parse(second))
            .toDecimal(scaleOnInfinitePrecision: decimal)
            .round(scale: decimal)
            .toString();
    }
  }

  void calculate() {
    if (value.second == null || value.operator == null || value.first == null) {
      _controller.addError(CalcualtorInputNotValid());
    } else {
      final result = _calculateString(
        value.first!,
        value.operator!,
        value.second!,
      );
      _update(
        CalculatorValue(
          first: result,
          operator: null,
          second: null,
        ),
      );
    }
  }

  void done() {
    if (value.second != null && value.operator != null && value.first != null) {
      calculate();
    } else {
      _update(
        CalculatorValue(
          first: value.first,
          operator: null,
          second: null,
        ),
      );
    }
  }
}
