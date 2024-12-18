import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  final String prefixIcon;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: AppColors.secondMainColor),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: AppColors.secondMainColor),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17),
              borderSide: const BorderSide(color: AppColors.secondMainColor),
            ),
            prefixIconConstraints:
                const BoxConstraints(maxHeight: 40, maxWidth: 40),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 8, right: 10),
              child: Image.asset(
                prefixIcon,
                width: 30,
                height: 30,
              ),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(color: AppColors.grey)),
      ),
    );
  }
}
