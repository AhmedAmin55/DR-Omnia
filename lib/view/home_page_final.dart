import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_BottomNavigationBar.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_flexiblespaceappbar.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_search_bar.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';
import 'package:storeapp_with_hazem/view/bag_page.dart';
import 'package:storeapp_with_hazem/view/nike_page.dart';

List<Widget> tabs = [
  Tab(
    child: Text("Nike"),
  ),
  Tab(
    child: Text("Adidas"),
  ),
  Tab(
    child: Text("Puma"),
  ),
  Tab(
    child: Text("Balenciaga"),
  ),
  Tab(
    child: Text("Convers"),
  ),
  Tab(
    child: Text("ss"),
  ),
];

List<Widget> body = [
  CustomScrollView(
    slivers: [
      NikePage(),
    ],
  ),
  CustomScrollView(
    slivers: [
      NikePage(),
    ],
  ),
  CustomScrollView(
    slivers: [
      NikePage(),
    ],
  ),
  CustomScrollView(
    slivers: [
      NikePage(),
    ],
  ),
  CustomScrollView(
    slivers: [
      NikePage(),
    ],
  ),
  CustomScrollView(
    slivers: [
      NikePage(),
    ],
  ),
];

class HomePageFinal extends StatefulWidget {
  const HomePageFinal({super.key});

  @override
  State<HomePageFinal> createState() => _HomePageFinalState();
}

class _HomePageFinalState extends State<HomePageFinal> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.mainBackgroundColor,
          toolbarHeight: 215,
          flexibleSpace: CustomFlexibleSpaceAppBar(),
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            labelColor: AppColors.mainTextColor,
            labelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelColor: AppColors.grey,
            unselectedLabelStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          children: body,
        ),
      ),
    );
  }
}
