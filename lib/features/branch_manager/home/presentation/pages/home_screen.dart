import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:prime_shippa_company/core/app_colors.dart';
import 'package:prime_shippa_company/features/branch_manager/home/presentation/widgets/branch_card.dart';
import 'package:prime_shippa_company/features/branch_manager/home/presentation/widgets/drawar_widget.dart';
import 'package:prime_shippa_company/features/branch_manager/home/presentation/widgets/statistics_card.dart';

class BranchManagerHomeScreen extends StatelessWidget {
  const BranchManagerHomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // Define the card data
    final List<Map<String, dynamic>> cardData = [
      {
        'title': 'Number of Employees',
        'value': '12',
        'color': AppColors.primaryColor.withOpacity(0.4),
      },
      {
        'title': 'Number of Branches',
        'value': '2',
        'color': AppColors.primaryColor.withOpacity(0.3),
      },
      {
        'title': 'Number of Shipments',
        'value': '3',
        'color': AppColors.primaryColor.withOpacity(0.2),
      },
      {
        'title': 'Number of Warehouses',
        'value': '14',
        'color': AppColors.primaryColor.withOpacity(0.1),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(''),
            Container(
              padding: const EdgeInsets.all(1),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/manager_image.png'),
                radius: 20,
              ),
            ),
          ],
        ),
      ),
      drawer: const DrawarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Statistic',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 32),
                ),
                const Gap(8),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  itemCount: cardData.length,
                  itemBuilder: (context, index) {
                    return StatisticsCard(
                      backgroundColor: cardData[index]['color'],
                      title: cardData[index]['title'],
                      value: cardData[index]['value'],
                    );
                  },
                ),
                const Gap(8),
                Text(
                  'Branches',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontSize: 32),
                ),
                const Gap(8),
                Container(
                  height: MediaQuery.of(context).size.height *
                      0.6,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return BranchCard(title: "Branch ${index + 1}");
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
