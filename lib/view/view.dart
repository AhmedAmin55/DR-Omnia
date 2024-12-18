import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/view/bag_page.dart';
import 'package:storeapp_with_hazem/view/details_page.dart';
import 'package:storeapp_with_hazem/view/favorate_page.dart';
import 'package:storeapp_with_hazem/view/home_page_final.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class Viewp extends StatefulWidget {
  const Viewp({super.key});

  @override
  State<Viewp> createState() => _ViewpState();
}

class _ViewpState extends State<Viewp> {
  @override
  List listPages = [
    FavoratePage(),
    DetailsPage(),
    HomePageFinal(),
    BagPage(),
    BagPage(),
  ];
  int currentIndex = 2;
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColors.mainBackgroundColor,
          body: listPages.elementAt(currentIndex),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              currentIndex: currentIndex,
              elevation: 10,
              unselectedIconTheme: const IconThemeData(color: AppColors.grey),
              selectedIconTheme:
                  const IconThemeData(color: AppColors.mainTextColor),
              iconSize: 30,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite_border,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.message_outlined,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 50,
                      child: Icon(
                        Icons.home_outlined,
                      ),
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_2_outlined,
                    ),
                    label: ""),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
