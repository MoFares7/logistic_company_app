import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StatisticsCard extends StatelessWidget {
  StatisticsCard(
      {super.key,
      required this.backgroundColor,
      required this.title,
      required this.value});

  final Color backgroundColor;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Gap(16),
          Text(
            value,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
    ;
  }
}
