import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/app_bar.dart';
import '../currencies.dart';

class CurrenciesPage extends StatelessWidget with AutoRouteWrapper {
  const CurrenciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CurrenciesView();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => CurrenciesBloc(
        spendingRepository: context.read<SpendingRepository>(),
      ),
      child: this,
    );
  }
}

class CurrenciesView extends StatelessWidget {
  const CurrenciesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Currency> currencies =
        context.select((CurrenciesBloc cubit) => cubit.state.currencies);
    final mainCurrency = context.select((CurrenciesBloc cubit) =>
        cubit.state.currencies.singleWhereOrNull((currency) => currency.main));
    return Scaffold(
      appBar: SpendingAppBar(
        title: Text(S.of(context).currency),
      ),
      body: ListView.separated(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          final currency = currencies[index];
          return CurrencyTile(
            currency: currency,
            mainCurrency: mainCurrency,
            onChanged: (currency) {
              if (currency == null) return;
              context
                  .read<CurrenciesBloc>()
                  .add(CurrenciesMainSelectedEvent(currency));
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class CurrencyTile extends StatelessWidget {
  const CurrencyTile({
    super.key,
    required this.currency,
    required this.onChanged,
    this.mainCurrency,
  });

  final Currency currency;
  final Currency? mainCurrency;
  final ValueChanged<Currency?> onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile<Currency>(
      value: currency,
      groupValue: mainCurrency,
      title: Text(currency.title),
      onChanged: onChanged,
    );
  }
}
