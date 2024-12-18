import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_icons.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/screens_id.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_textformfield.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_container_for_login.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_ask_to_signin_or_signout.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custombutton_forsigninorsignout.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_textformfiels_for_password.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(
              height: size * 0.05,
            ),
            const CustomCircleAvatar(
              image: "assets/images/mainLogo.jpg",
              maxRadius: 50,
            ),
            const SizedBox(
              height: 21,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppTexts.signIn,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.secondMainColor,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextFormField(
              hintText: AppTexts.emailOrUsername,
              prefixIcon: AppIcons.personIcon,
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextFormFieldForPassword(
              hintText: AppTexts.password,
              prefixIcon: AppIcons.passwordIcon,
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  AppTexts.forgetPassword,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonForSigninOrSignout(
              text: AppTexts.signIn,
              onTap: () =>
                  Navigator.pushReplacementNamed(context, ScreensId.view),
            ),
            const SizedBox(
              height: 45,
            ),
            const Center(
              child: Text(
                AppTexts.orSigninWith,
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomContainerForLogin(
                  duration: 150,
                  icon: "assets/images/google.png",
                ),
                CustomContainerForLogin(
                  duration: 300,
                  icon: "assets/images/facebook.png",
                ),
                CustomContainerForLogin(
                  duration: 500,
                  icon: "assets/images/twitter.png",
                ),
                CustomContainerForLogin(
                  duration: 600,
                  icon: "assets/images/linkedin.png",
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            CustomAskToSigninOrSignout(
              mainText: AppTexts.doNotHaveAnAccount,
              askSigninOrSignout: AppTexts.signOut,
              onTap: () => Navigator.pushNamed(
                context,
                ScreensId.signoutPageId,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
