import 'package:flutter/material.dart';
import 'package:storeapp_with_hazem/core/utilis/app_colors.dart';
import 'package:storeapp_with_hazem/core/utilis/app_texts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: TextFormField(
          decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              hintText: AppTexts.findShoes,
              hintStyle: TextStyle(color: AppColors.grey),
              suffixIcon: GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 3,
                  ),
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.secondMainColor,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.search_outlined,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              )),
        ),
      ),
    );
  }
}
