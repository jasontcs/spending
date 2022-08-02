import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../budget/budget.dart';
import '../../chart/chart.dart';
import '../../records/records.dart';
import '../../setting/setting.dart';
import '../home.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HomeCubit(),
      child: const AppHomeView(),
    );
  }
}

class AppHomeView extends StatelessWidget {
  const AppHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select((HomeCubit cubit) => cubit.state.tab);
    return Scaffold(
      body: IndexedStack(
        index: selectedTab.index,
        children: const [
          RecordsPage(),
          BudgetPage(),
          ChartPage(),
          SettingPage()
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.records,
              icon: const Icon(Icons.list_alt),
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.budget,
              icon: const Icon(Icons.battery_std),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add,
                color: Colors.transparent,
              ),
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.charts,
              icon: const Icon(Icons.pie_chart),
            ),
            _HomeTabButton(
              groupValue: selectedTab,
              value: HomeTab.setting,
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeTabButton extends StatelessWidget {
  const _HomeTabButton({
    required this.groupValue,
    required this.value,
    required this.icon,
  });

  final HomeTab groupValue;
  final HomeTab value;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.read<HomeCubit>().setTab(value),
      iconSize: 32,
      color:
          groupValue != value ? null : Theme.of(context).colorScheme.secondary,
      icon: icon,
    );
  }
}
