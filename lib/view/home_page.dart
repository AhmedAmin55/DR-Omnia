// import 'package:flutter/material.dart';
// import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';
// import 'package:storeapp_with_hazem/core/shared_widgets/custom_search_bar.dart';
// import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
// import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   // GlobalKey<ScaffoldState> drawerState = GlobalKey();
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: taps.length,
//       child: Scaffold(
//         backgroundColor: AppColors.mainBackgroundColor,
//         // key: drawerState,
//         drawer: Drawer(
//           child: Column(
//             children: [],
//           ),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.only(
//             top: 15,
//           ),
//           child: SafeArea(
//             child: CustomScrollView(
//               slivers: [
//                 SliverAppBar(
//                   bottom: TabBar(
//                     indicatorColor: Colors.transparent,
//                     dividerColor: Colors.transparent,
//                     tabAlignment: TabAlignment.start,
//                     isScrollable: true,
//                     labelColor: AppColors.mainTextColor,
//                     labelStyle: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                     unselectedLabelColor: AppColors.grey,
//                     unselectedLabelStyle: const TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w500,
//                     ),
//                     tabs: taps,
//                   ),
//                   backgroundColor: AppColors.mainBackgroundColor,
//                   collapsedHeight: 200,
//                   floating: true,
//                   pinned: true,
//                   actions: [
//                     CustomCircleAvatar(
//                       image: "assets/images/avatar.png",
//                       maxRadius: 30,
//                       color: AppColors.mainColor,
//                     ),
//                   ],
//                   flexibleSpace: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//                       const CustomSearchBar(),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           AppTexts.categories,
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.w800,
//                             color: AppColors.mainTextColor,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(items: [
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home_outlined,
//               ),
//               label: ""),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home_outlined,
//               ),
//               label: "")
//         ]),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:storeapp_with_hazem/core/models/shoesmodel.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_search_bar.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';
import 'package:storeapp_with_hazem/view/nike_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  GlobalKey<ScaffoldState> drawerState = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainBackgroundColor,
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
          toolbarHeight: 215,
          flexibleSpace: CustomScrollView(slivers: [
            SliverAppBar(
              pinned: true,
              toolbarHeight: 215,
              backgroundColor: AppColors.mainBackgroundColor,
              flexibleSpace: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    CustomSearchBar(),
                    SizedBox(
                      height: 30,
                    ),
                    const Align(
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
          ]),
        ),
        key: drawerState,
        backgroundColor: AppColors.mainBackgroundColor,
        body: SafeArea(
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  NikePage(),
                ],
              ),
              // SizedBox(
              //   height: 50,
              //   width: 350,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       IconButton(
              //         onPressed: () {
              //           drawerState.currentState!.openDrawer();
              //         },
              //         icon: Image.asset(
              //           "assets/images/menuIcon.png",
              //           width: 20,
              //         ),
              //       ),
              //       const CustomCircleAvatar(
              //         image: "assets/images/avatar.png",
              //         maxRadius: 20,
              //         color: AppColors.mainColor,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
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
                  icon: SizedBox(
                    height: 50,
                    child: Icon(
                      Icons.home_outlined,
                    ),
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message_outlined,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_border,
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
    );
  }
}

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
