import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../../../generated/l10n.dart';
import '../../../record.dart';

class CurrencyField extends StatelessWidget {
  const CurrencyField({super.key});

  static const String name = 'currency';

  @override
  Widget build(BuildContext context) {
    final value =
        context.select((RecordBloc bloc) => bloc.state.record?.currency);
    final currencies =
        context.select((RecordBloc bloc) => bloc.state.currencies);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: FormBuilderChoiceChip(
        name: name,
        validator: FormBuilderValidators.required(),
        options: currencies
            .map((currency) => FormBuilderChipOption<Currency>(
                  value: currency,
                  child: Text(currency.title),
                ))
            .toList(),
        valueTransformer: (value) =>
            currencies.singleWhereOrNull((currency) => currency.title == value),
        spacing: 8.0,
        decoration: InputDecoration(
          labelText: S.of(context).currency,
        ),
      ),
    );
  }
}
