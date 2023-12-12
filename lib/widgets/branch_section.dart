import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:dmc_prototype/widgets/app_text.dart';
import 'package:dmc_prototype/widgets/branch_card.dart';
import 'package:flutter/material.dart';

class BranchSection extends StatelessWidget {
  const BranchSection({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    final Map branchMap = {
      'Branch 1': 'This branch is located at the Eastern Province',
      'Branch 2': 'This branch is located at the Eastern Province',
      'Branch 3': 'This branch is located at the Eastern Province',
      'Branch 4': 'This branch is located at the Eastern Province',
      'Branch 5': 'This branch is located at the Eastern Province',
      'Branch 6': 'This branch is located at the Eastern Province',
    };
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor, width: 0.02),
          borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: AppText(
              text: 'Branches',
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: AppText(text: 'List of all banks in that province'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: branchMap.length,
              itemBuilder: (context, index) {
                return BranchCard(
                  title: branchMap.keys.elementAt(index),
                  subtitle: branchMap.values.elementAt(index),
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
