import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:dmc_prototype/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ProvinceCard extends StatelessWidget {
  final String provinceArea;
  final VoidCallback onTap;
  const ProvinceCard({
    super.key,
    required this.provinceArea,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: AppColors.primaryColor, width: 0.1),
          ),
          child: AppText(
            text: provinceArea,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
