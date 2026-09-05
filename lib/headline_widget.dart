import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({
    super.key,
    required this.title,
    this.actionText = " ",
    this.onActionTap,
  });

  final String title;
  final String actionText;
  final void Function()? onActionTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          actionText,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Colors.blue,
              ),
        ),
      ],
    );
  }
}
