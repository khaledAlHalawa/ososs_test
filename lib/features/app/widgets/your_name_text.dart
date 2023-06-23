import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ososs_test/core/utils/extensions/build_context.dart';

import '../../home/presentation/manager/home_cubit.dart';

class YourNameText extends StatelessWidget {
  const YourNameText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<HomeCubit, HomeState, String?>(
      selector: (state) => state.yourName,
      builder: (context, yourName) {
        return Text(
          (yourName?.isEmpty ?? true) ? "Your name" : yourName!,
        style: context.textTheme.titleMedium,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
