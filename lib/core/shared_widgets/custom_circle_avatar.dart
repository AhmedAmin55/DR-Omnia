import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    this.maxRadius,
    this.color,
    required this.image,
  });
  final double? maxRadius;
  final String image;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: maxRadius == null ? 30 : maxRadius,
      backgroundColor: color == null ? AppColors.white : color,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
