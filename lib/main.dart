import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/view/view.dart';
import 'package:storeapp_with_hazem/view/sign_in.dart';
import 'package:storeapp_with_hazem/view/sing_out.dart';
import 'package:storeapp_with_hazem/view/home_page.dart';
import 'package:storeapp_with_hazem/view/splash_page.dart';
import 'package:storeapp_with_hazem/view/homa_page_test.dart';
import 'package:storeapp_with_hazem/view/home_page_final.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/screens_id.dart';

main() {
  runApp(StoreAppWithHazem());
}

class StoreAppWithHazem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: AppColors.mainBackgroundColor)),
      debugShowCheckedModeBanner: false,
      routes: {
        ScreensId.splashPageId: (context) => SplashPage(),
        ScreensId.loginPageId: (context) => LoginPage(),
        ScreensId.signoutPageId: (context) => SingOutPage(),
        ScreensId.homePageFinal: (context) => HomePageFinal(),
        ScreensId.view: (context) => Viewp(),
      },
      initialRoute: ScreensId.splashPageId,
    );
  }
}
