import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';

class CustomTextFormFieldForPassword extends StatefulWidget {
  const CustomTextFormFieldForPassword({
    super.key,
    required this.hintText,
    required this.prefixIcon,
  });
  final String prefixIcon;
  final String hintText;

  @override
  State<CustomTextFormFieldForPassword> createState() =>
      _CustomTextFormFieldForPasswordState();
}

class _CustomTextFormFieldForPasswordState
    extends State<CustomTextFormFieldForPassword> {
  bool visibility = true;

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
              widget.prefixIcon,
              width: 22,
              height: 22,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              visibility = !visibility;
              setState(() {});
            },
            icon: Icon(visibility == true
                ? Icons.visibility_outlined
                : Icons.visibility_off_outlined),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(color: AppColors.grey),
        ),
        obscureText: visibility,
        keyboardType: TextInputType.visiblePassword,
      ),
    );
  }
}
