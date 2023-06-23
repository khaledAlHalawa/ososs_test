import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part '../../../core/models/app_bar_params.dart';

class OsossAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OsossAppBar({super.key, required this.params});

  final AppBarParams params;

  @override
  Widget build(BuildContext context) {
    assert(() {
      if (params.title == null && params.text == null) {
        return false;
      }
      return true;
    }(), "text == null && title == null. They cannot both have null value");

    return AppBar(
      title: params.title ?? Text(params.translateTitle ? params.text!.tr() : params.text!),
      centerTitle: params.centerTitle,
      actions: params.action,
      backgroundColor: params.backgroundColor,
      elevation: params.elevation,
      surfaceTintColor: params.surfaceTintColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
