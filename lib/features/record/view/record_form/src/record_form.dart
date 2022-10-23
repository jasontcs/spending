import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../../../common/common.dart';
import '../../../record.dart';
import '../record_form.dart';

class RecordForm extends StatelessWidget {
  const RecordForm({super.key});

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
              children: const [
                RecordIdField(visible: false),
                LastUpdate(),
                DateField(),
                AmountField(),
                CategoryField(),
                PersonField(),
                CurrencyField(),
                ReceiptsField(),
                RemarkField(),
                SaveButton(),
              ],
            ),
          )
        : const SizedBox.shrink();
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
