import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../record.dart';
import '../record_form.dart';

class RecordForm extends StatelessWidget {
  RecordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final record = context.select((RecordBloc bloc) => bloc.state.record);
    final formKey = context.select((RecordBloc bloc) => bloc.state.formKey);

    return record != null && formKey != null
        ? FormBuilder(
            key: formKey,
            initialValue: record.toFormData(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                DateField(),
                AmountField(),
                CategoryField(),
                PersonField(),
                CurrencyField(),
                Row(
                  children: <Widget>[
                    Expanded(child: SaveButton()),
                    const SizedBox(width: 20),
                    Expanded(child: ResetButton()),
                  ],
                ),
              ],
            ),
          )
        : Material();
  }
}

extension RecordX on Record {
  Map<String, Object> toFormData() => {
        DateField.name: dateTime,
        AmountField.name: amount.toString(),
        CategoryField.name: category.title,
        PersonField.name: person.title,
        CurrencyField.name: currency,
      };
}
