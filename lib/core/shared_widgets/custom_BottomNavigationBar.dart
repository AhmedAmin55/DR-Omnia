import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/view/bag_page.dart';
import 'package:storeapp_with_hazem/view/home_page_final.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
        selectedIconTheme: const IconThemeData(color: AppColors.mainTextColor),
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
    );
  }
}
