import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_search_bar.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';

class CustomFlexibleSpaceAppBar extends StatelessWidget {
  const CustomFlexibleSpaceAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          toolbarHeight: 215,
          flexibleSpace: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/images/menuIcon.png",
                          width: 20,
                        )),
                    CustomCircleAvatar(
                      image: "assets/images/avatar.png",
                      maxRadius: 22,
                      color: AppColors.secondMainColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomSearchBar(),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppTexts.categories,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      color: AppColors.mainTextColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
