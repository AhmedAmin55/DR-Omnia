import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_search_bar.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class HomaPageTest extends StatefulWidget {
  const HomaPageTest({super.key});

  @override
  State<HomaPageTest> createState() => _HomaPageTestState();
}

class _HomaPageTestState extends State<HomaPageTest> {
  GlobalKey<ScaffoldState> drawerState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        key: drawerState,
        backgroundColor: AppColors.mainBackgroundColor,
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    drawerState.currentState!.openDrawer();
                  },
                  icon: Image.asset(
                    "assets/images/menuIcon.png",
                    width: 20,
                  ),
                ),
                const CustomCircleAvatar(
                  image: "assets/images/avatar.png",
                  maxRadius: 20,
                  color: AppColors.mainColor,
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: AppColors.mainBackgroundColor,
                  toolbarHeight: 150,
                  floating: true,
                  flexibleSpace: Column(
                    children: [
                      SizedBox(
                        height: 100,
                      ),
                      CustomSearchBar(),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
