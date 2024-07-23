import 'package:flutter/material.dart';
import 'package:prime_shippa_company/core/app_colors.dart';

class BranchCard extends StatelessWidget {
  const BranchCard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.title_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Branch Name",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.person_4_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Manager Name",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_city_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "City",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.phone),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Phone Number",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.phone_android_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Mobile Number",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.place_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Address",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.email_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Email",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
