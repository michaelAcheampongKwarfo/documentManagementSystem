import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:dmc_prototype/widgets/app_text.dart';
import 'package:flutter/material.dart';

class BranchCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const BranchCard({
    super.key,
    required this.title,
    required this.subtitle,
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
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(
              Icons.location_city,
              color: AppColors.primaryColor,
            ),
            title: AppText(
              text: title,
              fontWeight: FontWeight.bold,
            ),
            subtitle: AppText(
              text: subtitle,
              fontSize: 16.0,
              color: AppColors.black45Color,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
