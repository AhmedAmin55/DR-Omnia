import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_ask_to_signin_or_signout.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_textformfield.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_textformfiels_for_password.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custombutton_forsigninorsignout.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';
import 'package:storeapp_with_hazem/core/utilis/screens_id.dart';

class SingOutPage extends StatefulWidget {
  const SingOutPage({super.key});
  @override
  State<SingOutPage> createState() => _SingOutPageState();
}

class _SingOutPageState extends State<SingOutPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/images/cornerImage.png",
                height: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                  SizedBox(
                    height: size * 0.03,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(
                        context, ScreensId.loginPageId),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/backArrow.png",
                          height: 15,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            AppTexts.back,
                            style: TextStyle(
                              color: AppColors.secondMainColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      AppTexts.signOut,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondMainColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomTextFormField(
                    hintText: AppTexts.fullName,
                    prefixIcon: "assets/images/personIcon.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextFormField(
                    hintText: AppTexts.email,
                    prefixIcon: "assets/images/emailIcon.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextFormFieldForPassword(
                    hintText: AppTexts.password,
                    prefixIcon: "assets/images/passwordIcon.png",
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomTextFormFieldForPassword(
                    hintText: AppTexts.confirmPassword,
                    prefixIcon: "assets/images/passwordIcon.png",
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const CustomButtonForSigninOrSignout(
                    text: AppTexts.signOut,
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  CustomAskToSigninOrSignout(
                      mainText: AppTexts.alreadyHaveAnAccount,
                      askSigninOrSignout: AppTexts.signIn,
                      onTap: () => Navigator.popAndPushNamed(
                          context, ScreensId.loginPageId)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
