import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class CustomButtonForSigninOrSignout extends StatelessWidget {
  const CustomButtonForSigninOrSignout({
    super.key,
    this.onTap,
    required this.text,
  });
  final GestureTapCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap == null ? () {} : onTap,
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.secondMainColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
    );
  }
}
