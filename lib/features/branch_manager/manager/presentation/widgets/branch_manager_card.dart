import 'package:flutter/material.dart';
import 'package:prime_shippa_company/core/app_colors.dart';

class BranchManagerCard extends StatelessWidget {
  const BranchManagerCard({super.key});

  void _showContextMenu(BuildContext context, Offset tapPosition) async {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final result = await showMenu(
      context: context,
      position: RelativeRect.fromRect(
        tapPosition & const Size(40, 40), // smaller rectangle, the touch area
        Offset.zero & overlay.size, // Bigger rectangle, the entire screen
      ),
      items: [
        const PopupMenuItem(
          value: 'edit',
          child: Text('Edit'),
        ),
        const PopupMenuItem(
          value: 'delete',
          child: Text('Delete'),
        ),
      ],
    );

    // Handle the menu selection
    switch (result) {
      case 'edit':
        // Perform edit action
        break;
      case 'delete':
        // Perform delete action
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onLongPressStart: (details) {
          _showContextMenu(context, details.globalPosition);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.primaryColor.withOpacity(0.2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fares Dabbas",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/manager_image.png'),
                      radius: 20,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Father Name",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.textColor),
                    ),
                    Text(
                      "John Doe",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                // Add other rows as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
