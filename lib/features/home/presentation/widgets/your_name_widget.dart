import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_test/features/home/presentation/manager/home_cubit.dart';

import '../../../app/widgets/your_name_text.dart';

class YourNameWidget extends StatefulWidget {
  const YourNameWidget({super.key});

  @override
  State<YourNameWidget> createState() => _YourNameWidgetState();
}

class _YourNameWidgetState extends State<YourNameWidget> {
  late HomeCubit _homeCubit;

  @override
  void initState() {
    _homeCubit = BlocProvider.of<HomeCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _homeCubit.yourNameController,
          decoration: const InputDecoration(hintText: "Enter your name"),
          onChanged: (text) => _homeCubit.onChangeInput(),
        ),
        25.verticalSpace,
        const YourNameText()
      ],
    );
  }
}
