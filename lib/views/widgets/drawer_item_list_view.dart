import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: 'Dashboard', image: AppAssets.imagesDashboard),
    DrawerItemModel(
        title: 'My Transaction', image: AppAssets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: AppAssets.imagesStatistics),
    DrawerItemModel(
        title: 'Wallet Account', image: AppAssets.imagesWalletAccount),
    DrawerItemModel(
        title: 'My Investments', image: AppAssets.imagesMyInvestments),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            if(activeIndex!=index){
              setState(() {
                activeIndex=index;
              });
            }
          },
            child: DrawerItem(
          drawerItemModel: items[index],
          isActive: activeIndex==index,
        ));
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: items.length,
    );
  }
}
