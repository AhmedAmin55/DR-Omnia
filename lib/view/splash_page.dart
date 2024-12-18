import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_circle_avatar.dart';
import 'package:storeapp_with_hazem/core/utilis/screens_id.dart';
import 'package:animate_do/animate_do.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @mustCallSuper
  void initState() {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushReplacementNamed(context, ScreensId.loginPageId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/splashBackground.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          FadeInLeft(
            child: const CustomCircleAvatar(
              image: "assets/images/mainLogo.jpg",
              maxRadius: 80,
            ),
          )
        ],
      ),
    );
  }
}
