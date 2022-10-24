import 'dart:async';

import 'package:calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../generated/l10n.dart';

class CalculatorField extends StatelessWidget {
  CalculatorField({
    super.key,
    FocusNode? focusNode,
    this.onDone,
    required this.builder,
    this.initialValue = '',
  }) : focusNode = focusNode ?? FocusNode();
  final String initialValue;
  final FocusNode focusNode;
  late final notifier = ValueNotifier<String>(initialValue);
  final ValueChanged<num>? onDone;
  final Widget Function(BuildContext context, String? value, bool? hasFocus)
      builder;

  final Calculator calculator = Calculator();

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      disableScroll: true,
      config: KeyboardActionsConfig(
        keyboardBarColor: Theme.of(context).colorScheme.onTertiaryContainer,
        actions: [
          KeyboardActionsItem(
            focusNode: focusNode,
            footerBuilder: (_) => CalculatorKeyboard(
              notifier: notifier,
              calculator: calculator,
            ),
            displayArrows: false,
            toolbarButtons: [
              (_) => Expanded(
                    child: ValueListenableBuilder(
                        valueListenable: notifier,
                        builder: (context, String value, child) {
                          return ColoredBox(
                            color: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 18.0),
                              child: Text(
                                value,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyLarge,
                              ),
                            ),
                          );
                        }),
                  ),
              (focusNode) => InkWell(
                    onTap: () {
                      focusNode.unfocus();
                    },
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.onTertiaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 18.0),
                        child: Text(
                          S.of(context).calculator_enter,
                          style: Theme.of(context).primaryTextTheme.bodyLarge,
                        ),
                      ),
                    ),
                  )
            ],
          ),
        ],
      ),
      child: KeyboardCustomInput<String>(
        focusNode: focusNode,
        notifier: notifier,
        builder: (context, value, hasFocus) {
          return Focus(
            onFocusChange: (hasFocus) {
              if (hasFocus) {
                calculator.trySetTo(num.tryParse(value));
              } else {
                calculator.done();
                final result = calculator.value.first;
                onDone?.call(result != null ? num.tryParse(result) ?? 0 : 0);
              }
            },
            child: builder(
                context, value.trim().isNotEmpty ? value : null, hasFocus),
          );
        },
      ),
    );
  }
}

const double kKeyboardKeyHeight = 70;

class CalculatorKeyboard extends StatefulWidget implements PreferredSizeWidget {
  const CalculatorKeyboard({
    super.key,
    required this.notifier,
    required this.calculator,
  });

  final ValueNotifier<String> notifier;
  final Calculator calculator;

  @override
  State<CalculatorKeyboard> createState() => _CalculatorKeyboardState();
  @override
  Size get preferredSize => const Size.fromHeight(kKeyboardKeyHeight * 4 + 24);
}

class _CalculatorKeyboardState extends State<CalculatorKeyboard>
    with KeyboardCustomPanelMixin<String> {
  late final StreamSubscription<CalculatorValue> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = widget.calculator.snapshot.listen(
      (value) {
        updateValue(
            '${value.first ?? ''} ${value.operator?.value ?? ''} ${value.second ?? ''}');
      },
      onError: (e) async {
        await HapticFeedback.vibrate();
      },
    );
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tertiary = Theme.of(context).colorScheme.tertiary;
    final error = Theme.of(context).colorScheme.onErrorContainer;
    return ColoredBox(
      color: Theme.of(context).colorScheme.onTertiaryContainer,
      child: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        columnWidths: [const FractionColumnWidth(0.23)].asMap(),
        children: [
          TableRow(children: [
            CalculatorKeyboardKey(
              label: '÷',
              onTap: () {
                widget.calculator.operate(CalculatorOperator.divide);
              },
              backgroundColor: tertiary,
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
              backgroundColor: tertiary,
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
              backgroundColor: tertiary,
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
              backgroundColor: tertiary,
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
              widget: const Icon(Icons.backspace),
              onTap: () {
                widget.calculator.remove();
              },
              backgroundColor: error,
            ),
          ]),
        ],
      ),
    );
  }

  @override
  ValueNotifier<String> get notifier => widget.notifier;
}

class CalculatorKeyboardKey extends StatelessWidget {
  const CalculatorKeyboardKey({
    super.key,
    this.label,
    this.widget,
    required this.onTap,
    this.backgroundColor,
  }) : assert(label != null || widget != null);
  final String? label;
  final Widget? widget;
  final GestureTapCallback onTap;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kKeyboardKeyHeight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                backgroundColor ?? Theme.of(context).colorScheme.secondary,
          ),
          onPressed: onTap,
          child: Container(
            alignment: Alignment.center,
            child: widget ??
                Text(
                  label!,
                  style: Theme.of(context).primaryTextTheme.titleLarge,
                ),
          ),
        ),
      ),
    );
  }
}
