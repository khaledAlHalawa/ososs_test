import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ososs_test/features/pok%C3%A9mon/data/models/pokemon_model.dart';
import '../../../../core/utils/responsive_padding.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({super.key, required this.pokemon});

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: HWEdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          children: [
            SizedBox(
              width: 75.r,
              child: Transform.translate(
                offset: const Offset(-30, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: SvgPicture.network(
                    pokemon.svgImageUrl!,
                    width: 75.r,
                    height: 75.r,
                    placeholderBuilder: (context) => const CupertinoActivityIndicator(),
                  ),
                ),
              ),
            ),
            20.horizontalSpace,
            Expanded(child: Text(pokemon.name))
          ],
        ),
      ),
    );
  }
}
