import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../generated/l10n.dart';
import '../../../record.dart';

class LastUpdate extends StatelessWidget {
  const LastUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    final dateString = context.select((RecordBloc bloc) {
      final record = bloc.state.record;
      if (record?.createdAt == null) {
        return S.of(context).draft;
      } else if (record!.updatedAt == record.createdAt) {
        return '${S.of(context).created}: ${DateFormat(S.of(context).date_format_pattern).format(record.createdAt!)}';
      } else {
        return '${S.of(context).updated}: ${DateFormat(S.of(context).date_format_pattern).format(record.updatedAt!)}';
      }
    });
    return Text(dateString);
  }
}
