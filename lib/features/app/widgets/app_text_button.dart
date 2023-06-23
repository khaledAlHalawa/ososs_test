import 'package:flutter/material.dart';
import 'package:ososs_test/core/utils/extensions/build_context.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onPressed,
    required this.text,
    this.icon,
  });

  final VoidCallback? onPressed;
  final String text;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return TextButton.icon(
        onPressed: onPressed,
        icon: icon!,
        label: Text(
          text,
          style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.error),
        ),
        style: TextButton.styleFrom(minimumSize: const Size(double.infinity, kMinInteractiveDimension)),
      );
    }

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(minimumSize: const Size(double.infinity, kMinInteractiveDimension)),
      child: Text(
        text,
        style: context.textTheme.bodyLarge?.copyWith(color: context.colorScheme.error),
      ),
    );
  }
}
