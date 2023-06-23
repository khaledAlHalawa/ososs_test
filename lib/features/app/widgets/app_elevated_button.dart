import 'package:flutter/material.dart';
import 'package:ososs_test/core/config/theme/typography.dart';
import 'package:ososs_test/core/utils/extensions/build_context.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
  });

  final VoidCallback? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, kMinInteractiveDimension),
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      child: Text(
        text,
        style: context.textTheme.bodyLarge?.sb.copyWith(
          color: foregroundColor
        ),
      ),
    );
  }
}
