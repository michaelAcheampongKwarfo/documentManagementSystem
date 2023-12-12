import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const AppTextField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * 0.38,
      height: screenSize.height * 0.08,
      child: Center(
        child: TextField(
          controller: controller,
          style: const TextStyle(
            color: AppColors.blackColor,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'Times New Roman',
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(
                color: AppColors.whiteColor,
              ),
            ),
            fillColor: AppColors.whiteColor,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: AppColors.greyColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'Times New Roman',
            ),
          ),
        ),
      ),
    );
  }
}
