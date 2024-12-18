import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/shared_widgets/custom_iconbar.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class BarIcon extends StatelessWidget {
  const BarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.white,
        ),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomIconBar(
                icon: Icons.home_outlined,
              ),
              CustomIconBar(
                icon: Icons.message_outlined,
              ),
              CustomIconBar(
                icon: Icons.favorite_border,
              ),
              CustomIconBar(
                icon: Icons.shopping_bag_outlined,
              ),
              CustomIconBar(
                icon: Icons.person_3_outlined,
              )
            ],
          ),
        ),
      ),
    );
  }
}
