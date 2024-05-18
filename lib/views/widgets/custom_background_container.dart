import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_Colors.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({super.key, this.padding, required this.child});

  final double? padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(padding??20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
