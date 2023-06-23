part of '../../features/app/widgets/ososs_app_bar.dart';

class AppBarParams {
  AppBarParams({
    this.translateTitle = true,
    this.centerTitle = true,
    this.text,
    this.title,
    this.action,
    this.elevation,
    this.surfaceTintColor,
    this.backgroundColor,
    this.onBack,
  });

  final String? text;
  final Widget? title;
  final List<Widget>? action;
  final bool translateTitle;
  final double? elevation;
  final Color? surfaceTintColor;
  final Color? backgroundColor;
  final bool centerTitle;
  final VoidCallback? onBack;
}
