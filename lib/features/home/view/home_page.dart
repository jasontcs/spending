import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
      extendBody: true,
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        onTap: (index) {
          if (index == 2) context.goNamed(RecordPage.routeName);
          context
              .read<HomeCubit>()
              .setTab(HomeTab.values[index < 2 ? index : --index]);
        },
        initialActiveIndex: selectedTab.index,
        items: [
          TabItem(
            icon: Icons.list_alt,
            title: '紀錄',
          ),
          TabItem(
            icon: Icons.battery_5_bar,
            title: '預算',
          ),
          TabItem(
            icon: Icons.add,
          ),
          TabItem(
            icon: Icons.pie_chart,
            title: '分析',
          ),
          TabItem(
            icon: Icons.settings,
            title: '設定',
          ),
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   shape: CircularNotchedRectangle(),
      //   clipBehavior: Clip.antiAlias,
      //   child: BottomNavigationBar(
      //     type: BottomNavigationBarType.fixed,
      //     elevation: 0,
      //     currentIndex: selectedTab.index,
      //     onTap: (index) =>
      //         context.read<HomeCubit>().setTab(HomeTab.values[index]),
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: const Icon(Icons.list_alt),
      //         label: '紀錄',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: const Icon(Icons.battery_5_bar),
      //         label: '預算',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: const Icon(Icons.pie_chart),
      //         label: '分析',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: const Icon(Icons.settings),
      //         label: '設定',
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
