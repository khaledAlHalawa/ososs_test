import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ososs_test/core/utils/extensions/build_context.dart';
import 'package:ososs_test/features/app/widgets/ososs_app_bar.dart';
import '../../../../core/utils/responsive_padding.dart';
import '../../../app/widgets/your_name_text.dart';

enum ShapeType { circle, rectangleRounded, rectangle }

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  final ValueNotifier<ShapeType> _shapeNotifier = ValueNotifier(ShapeType.circle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OsossAppBar(
        params: AppBarParams(
          text: "Animations",
          centerTitle: false,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          20.verticalSpace,
          const Center(child: YourNameText()),
          50.verticalSpace,
          ValueListenableBuilder<ShapeType>(
              valueListenable: _shapeNotifier,
              builder: (context, shapeType, _) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 300.r,
                  width: 300.r,
                  decoration: getBoxDecorationByShapeType(shapeType),
                );
              }),
          const Spacer(),
          Padding(
            padding: HWEdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => _shapeNotifier.value = ShapeType.rectangle,
                  child: Container(
                    height: 50.r,
                    width: 50.r,
                    decoration: BoxDecoration(color: context.colorScheme.primary),
                  ),
                ),
                InkWell(
                  onTap: () => _shapeNotifier.value = ShapeType.rectangleRounded,
                  child: Container(
                    height: 50.r,
                    width: 50.r,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _shapeNotifier.value = ShapeType.circle,
                  child: CircleAvatar(
                    radius: 30.r,
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          50.verticalSpace,
        ],
      ),
    );
  }

  BoxDecoration getBoxDecorationByShapeType(ShapeType shapeType) {
    switch (shapeType) {
      case ShapeType.circle:
        return BoxDecoration(borderRadius: BorderRadius.circular(360).r, color: Colors.red);
      case ShapeType.rectangle:
        return BoxDecoration(color: context.colorScheme.primary);
      case ShapeType.rectangleRounded:
        return BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(30));
    }
  }
}
