import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_Colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const CircleAvatar(
          backgroundColor: AppColors.grey50,
          radius: 25,
          child: Icon(
            Icons.add,
            color: AppColors.blue,
          ),
        ),
      ],
    );
  }
}