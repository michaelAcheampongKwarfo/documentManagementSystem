import 'package:dmc_prototype/widgets/app_button.dart';
import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:dmc_prototype/widgets/app_text.dart';
import 'package:dmc_prototype/widgets/app_textfeild.dart';
import 'package:flutter/material.dart';

class FilesSection extends StatelessWidget {
  const FilesSection({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });

  final double width;
  final double height;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 0.02)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: AppText(
                text: 'All files from that branch',
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: AppText(
                text: 'Search for the file by ',
                fontSize: 16.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextField(
                    controller: controller, hintText: 'eg. someFileName'),
                AppButton(onTap: () {}, text: 'Search')
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12.0),
                  border: Border.all(color: AppColors.primaryColor, width: 0.1),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(columns: const [
                    DataColumn(
                        label: AppText(
                      text: 'Name',
                      fontWeight: FontWeight.bold,
                    )),
                    DataColumn(
                        label: AppText(
                      text: 'Type',
                      fontWeight: FontWeight.bold,
                    )),
                    DataColumn(
                        label: AppText(
                      text: 'Created By',
                      fontWeight: FontWeight.bold,
                    )),
                    DataColumn(
                        label: AppText(
                      text: 'Creation Date',
                      fontWeight: FontWeight.bold,
                    )),
                    DataColumn(
                        label: AppText(
                      text: 'Action',
                      fontWeight: FontWeight.bold,
                    )),
                  ], rows: const [
                    DataRow(cells: [
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: 'File1')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: 'PDF')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: 'Client1')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: '11/12/2023')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: '-')),
                    ]),
                    DataRow(cells: [
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: 'File2')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: 'DOC')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: 'Client1')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: '11/12/2023')),
                      DataCell(AppText(
                          color: AppColors.black45Color,
                          fontSize: 16.0,
                          text: '-')),
                    ])
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
