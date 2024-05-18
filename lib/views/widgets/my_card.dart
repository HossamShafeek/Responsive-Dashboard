import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_Colors.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24,right: 24,bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AppAssets.imagesCardBackground),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            minVerticalPadding: 0,
            title: Text(
              'Name card',
              style: AppStyles.styleRegular16(context).copyWith(
                color: AppColors.white,
              ),
            ),
            subtitle: Text(
              'Hossam Shafeek',
              style: AppStyles.styleMedium20(context),
            ),
            trailing: SvgPicture.asset(AppAssets.imagesGallery),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: AppStyles.styleSemiBold24(context).copyWith(
                  color: AppColors.white,
                ),
              ),
              Text(
                '12/28 - 124',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}