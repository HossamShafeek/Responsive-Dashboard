import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/views/widgets/user_info_kist_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  final List<UserInfoModel> items = const [
    UserInfoModel(image: AppAssets.imagesAvatar1, title: 'Lekan Okeowo', subtitle: 'demo@gmail.com'),
    UserInfoModel(image: AppAssets.imagesAvatar2, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail.com'),
    UserInfoModel(image: AppAssets.imagesAvatar3, title: 'Josua Nunito', subtitle: 'Josh Nunito@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(child: UserInfoListTile(userInfoModel: e,));
        }).toList(),
      ),
    );
  }
}