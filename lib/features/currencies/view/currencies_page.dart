import 'package:auto_route/auto_route.dart';
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
      create: (context) => CurrenciesCubit(
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
        context.select((CurrenciesCubit cubit) => cubit.state.currencies);
    final mainCurrency = context.select((CurrenciesCubit cubit) =>
        cubit.state.currencies.singleWhere((currency) => currency.main));
    return Scaffold(
      appBar: SpendingAppBar(
        title: Text(S.of(context).currency),
        actions: [
          IconButton(
            onPressed: () {
              context.pushRoute(PersonRoute());
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ListView.separated(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          final currency = currencies[index];
          return CurrencyTile(
            currency: currency,
            mainCurrency: mainCurrency,
            onChanged: (value) {},
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
    required this.mainCurrency,
  });

  final Currency currency;
  final Currency mainCurrency;
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
