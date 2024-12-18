import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class CustomIconBar extends StatelessWidget {
  const CustomIconBar({
    super.key,
    this.onTap,
    required this.icon,
  });
  final GestureTapCallback? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap == null ? () {} : onTap,
      child: Icon(
        icon,
        color: AppColors.grey,
        size: 30,
      ),
    );
  }
}
