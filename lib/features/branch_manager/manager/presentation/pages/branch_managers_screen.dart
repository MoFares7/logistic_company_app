import 'package:flutter/material.dart';
import 'package:prime_shippa_company/core/app_colors.dart';
import 'package:prime_shippa_company/features/branch_manager/manager/presentation/widgets/branch_manager_card.dart';

class BranchManagerScreen extends StatelessWidget {
  const BranchManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Branches Manager',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.textColor,
                )),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return const BranchManagerCard();
                  },
                  childCount: 4,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
