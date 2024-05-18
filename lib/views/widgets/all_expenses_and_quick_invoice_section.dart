import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection(
      {super.key,  this.padding});

  final EdgeInsetsGeometry ?padding;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: padding??EdgeInsets.zero,
        child: const Column(
          children: [
            AllExpenses(),
            SizedBox(height: 24),
            QuickInvoice(),
          ],
        ),
      ),
    );
  }
}
