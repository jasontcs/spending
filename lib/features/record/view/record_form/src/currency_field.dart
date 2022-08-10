import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:collection/collection.dart';

import '../../../record.dart';

class CurrencyField extends StatelessWidget {
  const CurrencyField({Key? key}) : super(key: key);

  static const String name = 'currency';

  @override
  Widget build(BuildContext context) {
    final value =
        context.select((RecordBloc bloc) => bloc.state.record?.currency);
    final currencies = context.select((RecordBloc bloc) =>
        [if (value != null) value, ...bloc.state.currencies].toSet());

    return FormBuilderChoiceChip(
      name: name,
      validator: FormBuilderValidators.required(),
      options: currencies
          .map((currency) => FormBuilderChipOption<Currency>(
                value: currency,
                child: Text(currency.title),
              ))
          .toList(),
      onChanged: (Currency? value) {
        if (value == null) {
          final org = FormBuilder.of(context)!.fields[name]!.value as Currency?;
          print(org);
        }
      },
    );
  }
}
