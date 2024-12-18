import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:animate_do/animate_do.dart';

class CustomContainerForLogin extends StatelessWidget {
  const CustomContainerForLogin({
    super.key,
    this.onTap,
    required this.icon,
    required this.duration,
  });
  final String icon;
  final GestureTapCallback? onTap;
  final int duration;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: FadeIn(
        delay: Duration(milliseconds: duration),
        child: GestureDetector(
          onTap: onTap == null ? () {} : onTap,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 8,
                      spreadRadius: 0.5,
                      offset: const Offset(0, 5))
                ]),
            child: Center(
              child: Image.asset(
                icon,
                width: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
