import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';
import 'package:storeapp_with_hazem/core/models/shoesmodel.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainBackgroundColor,
        toolbarHeight: 180,
        flexibleSpace: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              toolbarHeight: 180,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 40,
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
                      height: 25,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppTexts.mybag,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: AppColors.mainTextColor,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppTexts.checkAndPayYourShoes,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 320,
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 170,
                                  child: Text(
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    items[index].shoesName,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$",
                                      style: TextStyle(
                                        color: AppColors.secondMainColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      "${items[index].shoesPrice}",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 200,
                            child: Image.asset(
                              items[index].shoesImage,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                shadowColor: AppColors.mainBackgroundColor,
                color: AppColors.mainBackgroundColor,
                elevation: 10,
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.mainBackgroundColor, // Shadow color
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset:
                            Offset(0, 4), // Changes the position of the shadow
                      ),
                    ],
                    color: AppColors.mainBackgroundColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '3Items',
                        style: TextStyle(
                            color: AppColors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        '\$ 550',
                        style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80,
              ),
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  color: AppColors.secondMainColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                    child: Text(
                  "CheckOut",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
