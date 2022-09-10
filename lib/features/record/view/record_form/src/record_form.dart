import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../../../common/common.dart';
import '../../../record.dart';
import '../record_form.dart';

class RecordForm extends StatelessWidget {
  RecordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final record = context.select((RecordBloc bloc) => bloc.state.record);
    final formKey = context.select((RecordBloc bloc) => bloc.state.formKey);
    final enabled = context.select((RecordBloc bloc) =>
        bloc.state.status == AppFormStatus.idle ||
        bloc.state.status == AppFormStatus.unsaved);

    return record != null && formKey != null
        ? FormBuilder(
            key: formKey,
            enabled: enabled,
            initialValue: record.toFormData(),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: () {
              context.read<RecordBloc>().add(RecordFormEditted());
            },
            child: Column(
              children: [
                Visibility(
                  visible: false,
                  maintainState: true,
                  child: RecordIdField(),
                ),
                LastUpdate(),
                SizedBox(height: 8.0),
                DateField(),
                SizedBox(height: 8.0),
                AmountField(),
                SizedBox(height: 8.0),
                CategoryField(),
                SizedBox(height: 8.0),
                PersonField(),
                SizedBox(height: 8.0),
                CurrencyField(),
                SizedBox(height: 8.0),
                ReceiptsField(),
                SizedBox(height: 8.0),
                RemarkField(),
                SizedBox(height: 12.0),
                SaveButton(),
              ],
            ),
          )
        : Material();
  }
}

extension RecordX on Record {
  Map<String, Object> toFormData() => {
        if (id != null) RecordIdField.name: id!,
        DateField.name: dateTime,
        AmountField.name: amount,
        CategoryField.name: category,
        PersonField.name: person,
        CurrencyField.name: currency,
        ReceiptsField.name: receipts,
        RemarkField.name: remarks,
      };
}

extension FormDataX on Map<String, dynamic> {
  Record toRecord() => Record(
        id: this[RecordIdField.name] as String?,
        amount: this[AmountField.name] as num,
        currency: this[CurrencyField.name] as Currency,
        category: this[CategoryField.name] as Category,
        person: this[PersonField.name] as Person,
        receipts: this[ReceiptsField.name] as List<Receipt>,
        remarks: this[RemarkField.name] as String,
        dateTime: this[DateField.name] as DateTime,
      );
}
