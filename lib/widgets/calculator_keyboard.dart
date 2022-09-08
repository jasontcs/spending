import 'dart:async';

import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class CalculatorField extends StatelessWidget {
  CalculatorField({
    Key? key,
    FocusNode? focusNode,
    this.onDone,
    required this.builder,
    this.initialValue = '',
  })  : focusNode = focusNode ?? FocusNode(),
        super(key: key);
  final String initialValue;
  final FocusNode focusNode;
  late final notifier = ValueNotifier<String>(initialValue);
  final ValueChanged<num?>? onDone;
  final Widget Function(BuildContext context, String value, bool? hasFocus)
      builder;

  final Calculator calculator = Calculator();

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      disableScroll: true,
      config: KeyboardActionsConfig(
        actions: [
          KeyboardActionsItem(
              focusNode: focusNode,
              footerBuilder: (_) => CalculatorKeyboard(
                    notifier: notifier,
                    calculator: calculator,
                  ),
              displayArrows: false,
              toolbarAlignment: MainAxisAlignment.center,
              toolbarButtons: [
                (focusNode) => TextButton(
                      onPressed: () {
                        focusNode.unfocus();
                      },
                      child: Text('Enter'),
                    )
              ]),
        ],
      ),
      child: KeyboardCustomInput<String>(
        focusNode: focusNode,
        notifier: notifier,
        builder: (context, value, hasFocus) {
          return Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                calculator.init(initialValue: num.tryParse(value));
              } else {
                calculator.done();
                final result = calculator.value.first;
                onDone?.call(result != null ? num.tryParse(result) : null);
              }
            },
            child: builder(context, value, hasFocus),
          );
        },
      ),
    );
  }
}

class CalculatorKeyboard extends StatefulWidget implements PreferredSizeWidget {
  const CalculatorKeyboard({
    Key? key,
    required this.notifier,
    required this.calculator,
  }) : super(key: key);

  final ValueNotifier<String> notifier;
  final Calculator calculator;

  @override
  State<CalculatorKeyboard> createState() => _CalculatorKeyboardState();
  Size get preferredSize => Size.fromHeight(400);
}

class _CalculatorKeyboardState extends State<CalculatorKeyboard>
    with KeyboardCustomPanelMixin<String> {
  @override
  late StreamSubscription<CalculatorValue> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = widget.calculator.snapshot.listen((value) {
      updateValue(
          '${value.first ?? ''} ${value.operator?.value ?? ''} ${value.second ?? ''}');
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(children: [
          CalculatorKeyboardKey(
            label: '÷',
            onTap: () {
              widget.calculator.operate(CalculatorOperator.divide);
            },
          ),
          CalculatorKeyboardKey(
            label: '7',
            onTap: () {
              widget.calculator.input(CalculatorNumber.seven);
            },
          ),
          CalculatorKeyboardKey(
            label: '8',
            onTap: () {
              widget.calculator.input(CalculatorNumber.eight);
            },
          ),
          CalculatorKeyboardKey(
            label: '9',
            onTap: () {
              widget.calculator.input(CalculatorNumber.nine);
            },
          ),
        ]),
        TableRow(children: [
          CalculatorKeyboardKey(
            label: '×',
            onTap: () {
              widget.calculator.operate(CalculatorOperator.multiply);
            },
          ),
          CalculatorKeyboardKey(
            label: '4',
            onTap: () {
              widget.calculator.input(CalculatorNumber.four);
            },
          ),
          CalculatorKeyboardKey(
            label: '5',
            onTap: () {
              widget.calculator.input(CalculatorNumber.five);
            },
          ),
          CalculatorKeyboardKey(
            label: '6',
            onTap: () {
              widget.calculator.input(CalculatorNumber.six);
            },
          ),
        ]),
        TableRow(children: [
          CalculatorKeyboardKey(
            label: '-',
            onTap: () {
              widget.calculator.operate(CalculatorOperator.minus);
            },
          ),
          CalculatorKeyboardKey(
            label: '1',
            onTap: () {
              widget.calculator.input(CalculatorNumber.one);
            },
          ),
          CalculatorKeyboardKey(
            label: '2',
            onTap: () {
              widget.calculator.input(CalculatorNumber.two);
            },
          ),
          CalculatorKeyboardKey(
            label: '3',
            onTap: () {
              widget.calculator.input(CalculatorNumber.three);
            },
          ),
        ]),
        TableRow(children: [
          CalculatorKeyboardKey(
            label: '+',
            onTap: () {
              widget.calculator.operate(CalculatorOperator.add);
            },
          ),
          CalculatorKeyboardKey(
            label: '.',
            onTap: () {
              widget.calculator.dot();
            },
          ),
          CalculatorKeyboardKey(
            label: '0',
            onTap: () {
              widget.calculator.input(CalculatorNumber.zero);
            },
          ),
          CalculatorKeyboardKey(
            label: '<',
            onTap: () {
              widget.calculator.remove();
            },
          ),
        ]),
      ],
    );
  }

  @override
  ValueNotifier<String> get notifier => widget.notifier;
}

class CalculatorKeyboardKey extends StatelessWidget {
  const CalculatorKeyboardKey({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);
  final String label;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        alignment: Alignment.center,
        child: Text(label),
      ),
    );
  }
}
