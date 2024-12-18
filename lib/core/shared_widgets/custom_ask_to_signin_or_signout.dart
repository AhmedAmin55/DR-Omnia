import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class CustomAskToSigninOrSignout extends StatelessWidget {
  const CustomAskToSigninOrSignout({
    super.key,
    this.onTap,
    required this.mainText,
    required this.askSigninOrSignout,
  });
  final GestureTapCallback? onTap;
  final String mainText;
  final String askSigninOrSignout;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          mainText,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: AppColors.secondMainColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: GestureDetector(
            onTap: onTap == null ? () {} : onTap,
            child: Text(
              askSigninOrSignout,
              style: const TextStyle(
                color: AppColors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
