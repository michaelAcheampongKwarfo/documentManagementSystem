import 'package:dmc_prototype/widgets/app_colors.dart';
import 'package:dmc_prototype/widgets/app_text.dart';
import 'package:dmc_prototype/widgets/province_card.dart';
import 'package:flutter/material.dart';

class ProvinceSection extends StatefulWidget {
  const ProvinceSection({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  State<ProvinceSection> createState() => _ProvinceSectionState();
}

class _ProvinceSectionState extends State<ProvinceSection> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor, width: 0.2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_city,
                  color: AppColors.primaryColor,
                ),
                SizedBox(
                  width: 10.0,
                ),
                AppText(
                  text: 'SLCB',
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: AppText(
              text: 'Provinces',
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          ProvinceCard(
            provinceArea: 'Eastern Province',
            onTap: () {},
          ),
          ProvinceCard(
            provinceArea: 'Northern Province',
            onTap: () {},
          ),
          ProvinceCard(
            provinceArea: 'North West Province',
            onTap: () {},
          ),
          ProvinceCard(
            provinceArea: 'Southern Province',
            onTap: () {},
          ),
          ProvinceCard(
            provinceArea: 'Western Province',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
