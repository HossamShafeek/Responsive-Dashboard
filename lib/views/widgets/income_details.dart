import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_Colors.dart';
import 'package:responsive_dashboard/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  final List<ItemDetailsModel> items = const [
    ItemDetailsModel(
      color: AppColors.indigoAccent,
      title: 'Design service',
      value: '40%',
    ),
    ItemDetailsModel(
      color: AppColors.blue,
      title: 'Design product',
      value: '25%',
    ),
    ItemDetailsModel(
      color: AppColors.indigo,
      title: 'Product royalti',
      value: '20%',
    ),
    ItemDetailsModel(
      color: AppColors.grey300,
      title: 'Other',
      value: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((element) {
        return ItemDetails(itemDetailsModel: element);
      }).toList(),
    );
  }
}