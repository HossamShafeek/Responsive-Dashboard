import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_Colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey= GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width  = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.scaffoldBackground,
      appBar: width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: AppColors.white,
              centerTitle: true,
              title: Text('Dashboard',style: AppStyles.styleSemiBold24(context).copyWith(
                color: AppColors.indigo,
              ),),
              leading: InkWell(
                  onTap: (){
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(Icons.menu)),
            )
          : null,
      drawer: width < SizeConfig.tablet?const CustomDrawer():null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(
          padding: EdgeInsets.all(16),
        ),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
