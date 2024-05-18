import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 3,
          child: CustomDrawer(),
        ),
        SizedBox(width: 30),
        Expanded(
          flex: 6,
          child: AllExpensesAndQuickInvoiceSection(
            padding: EdgeInsets.symmetric(vertical: 30),
          ),
        ),
        SizedBox(width: 30),
        Expanded(
          flex: 4,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 30),
                MyCardsAndTransactionHistorySection(),
                SizedBox(height: 24),
                IncomeSection(),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
        SizedBox(width: 30),
      ],
    );
  }
}
