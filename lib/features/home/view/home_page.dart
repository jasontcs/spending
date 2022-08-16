import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../budget/budget.dart';
import '../../chart/chart.dart';
import '../../record/record.dart';
import '../../records/records.dart';
import '../../setting/setting.dart';
import '../home.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});
  static const String routeName = '/';
  static GoRoute route({List<GoRoute>? routes}) => GoRoute(
        name: routeName,
        path: routeName,
        builder: (context, state) => BlocProvider(
          create: (_) => HomeCubit(),
          child: AppHomePage(),
        ),
        routes: routes ?? [],
      );

  @override
  Widget build(BuildContext context) {
    return const AppHomeView();
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
        children: [
          RecordsPage(),
          BudgetPage(),
          ChartPage(),
          SettingPage(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.goNamed(RecordPage.routeName);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedTab.index,
          onTap: (index) =>
              context.read<HomeCubit>().setTab(HomeTab.values[index]),
          items: const [
            BottomNavigationBarItem(
              icon: const Icon(Icons.list_alt),
              label: '紀錄',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.battery_5_bar),
              label: '預算',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.pie_chart),
              label: '分析',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: '設定',
            ),
          ],
        ),
      ),
    );
  }
}
