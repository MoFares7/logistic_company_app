import 'package:flutter/material.dart';
import 'package:prime_shippa_company/core/app_colors.dart';
import 'package:prime_shippa_company/features/branch_manager/manager/presentation/pages/branch_managers_screen.dart';

class DrawarWidget extends StatelessWidget {
  const DrawarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.6),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Prime Shippa Company',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: AppColors.whiteColor)),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_2_rounded,
              color: AppColors.textColor,
            ),
            title: Text(
              'Branches Managers',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.textColor),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BranchManagerScreen()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.beach_access,
              color: AppColors.textColor,
            ),
            title: Text(
              'Permissin Managment',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.textColor),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.price_change_rounded,
              color: AppColors.textColor,
            ),
            title: Text(
              'Pricing Management',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.textColor),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              color: AppColors.textColor,
            ),
            title: Text(
              'Logout',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: AppColors.textColor),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
