import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';
import 'package:storeapp_with_hazem/core/models/shoesmodel.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/screens_id.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, ScreensId.homePageFinal);
                    },
                    icon: Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColors.secondMainColor),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                      ),
                    )),
                CustomCircleAvatar(
                  image: "assets/images/avatar.png",
                  maxRadius: 22,
                  color: AppColors.secondMainColor,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
