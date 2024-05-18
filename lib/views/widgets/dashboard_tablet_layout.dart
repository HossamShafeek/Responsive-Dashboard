import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_mobile_layout.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 30),
        Expanded(
          flex: 2,
          child: DashboardMobileLayout(
            padding: EdgeInsets.symmetric(vertical: 30),
          ),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}
