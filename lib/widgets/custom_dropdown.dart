import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDropdown<T> extends StatelessWidget {
  final T? value;
  final List<T> items;
  final String hintText;
  final void Function(T?) onChanged;

  CustomDropdown({
    required this.value,
    required this.items,
    required this.hintText,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.15,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: AppColors.primaryColor, width: 0.2),
      ),
      child: Center(
        child: DropdownButton<T>(
          value: value,
          items: items.map((item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(item.toString()),
            );
          }).toList(),
          onChanged: onChanged,
          isExpanded: true,
          underline: const SizedBox(), // Remove the default underline
          hint: Text(
            hintText,
            style: const TextStyle(
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
