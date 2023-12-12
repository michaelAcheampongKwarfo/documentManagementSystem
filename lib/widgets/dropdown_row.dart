import 'package:dmc_prototype/widgets/app_text.dart';
import 'package:dmc_prototype/widgets/custom_dropdown.dart';
import 'package:flutter/material.dart';

class DropDownRow extends StatefulWidget {
  const DropDownRow({super.key});

  @override
  State<DropDownRow> createState() => _DropDownRowState();
}

class _DropDownRowState extends State<DropDownRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text: 'File Type'),
            SizedBox(
              height: 20.0,
              child: CustomDropdown<String>(
                value: 'Option 1',
                items: const ['Option 1', 'Option 2', 'Option 3'],
                hintText: 'Select an option',
                onChanged: (value) {
                  // Handle the onChanged function
                  print('Selected value: $value');
                  // Update the state or perform any other action based on the selected value
                },
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text: 'Start Date'),
            SizedBox(
              height: 20.0,
              child: CustomDropdown<String>(
                value: 'Option 1',
                items: const ['Option 1', 'Option 2', 'Option 3'],
                hintText: 'Select an option',
                onChanged: (value) {
                  // Handle the onChanged function
                  print('Selected value: $value');
                  // Update the state or perform any other action based on the selected value
                },
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text: 'End Date'),
            SizedBox(
              height: 20.0,
              child: CustomDropdown<String>(
                value: 'Option 1',
                items: const ['Option 1', 'Option 2', 'Option 3'],
                hintText: 'Select an option',
                onChanged: (value) {
                  // Handle the onChanged function
                  print('Selected value: $value');
                  // Update the state or perform any other action based on the selected value
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
