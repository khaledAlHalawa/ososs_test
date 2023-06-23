import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ososs_test/core/config/routing/router.dart';
import 'package:ososs_test/core/config/theme/colors_app.dart';
import 'package:ososs_test/core/utils/extensions/build_context.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/widgets/app_elevated_button.dart';
import '../../../app/widgets/app_text_button.dart';
import '../../../app/widgets/ososs_app_bar.dart';
import '../manager/home_cubit.dart';
import '../widgets/your_name_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = BlocProvider.of<HomeCubit>(context);

    return Scaffold(
      appBar: OsossAppBar(params: AppBarParams(text: "Home")),
      body: Padding(
        padding: HWEdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const YourNameWidget(),
            const Spacer(),
            AppTextButton(
              text: "Clear text",
              icon: Icon(Icons.delete_rounded, color: context.colorScheme.error),
              onPressed: homeCubit.onClearText,
            ),
            10.verticalSpace,
            AppElevatedButton(
              text: 'Go to page 1',
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.grey.shade50,
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                context.push(GRouter.config.kAnimationRoute, extra: homeCubit);
              },
            ),
            10.verticalSpace,
            AppElevatedButton(
              text: 'Go to page 2',
              backgroundColor: Colors.blue.shade300,
              foregroundColor: AppColors.grey.shade50,
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                context.push(GRouter.config.kPokemonRoute);
              },
            ),
            40.verticalSpace,
          ],
        ),
      ),
    );
  }
}
