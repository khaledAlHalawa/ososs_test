import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:ososs_test/features/app/widgets/ososs_app_bar.dart';
import 'package:ososs_test/features/pok%C3%A9mon/data/models/pokemon_model.dart';
import 'package:ososs_test/features/pok%C3%A9mon/presentation/manager/pokemons_bloc.dart';

import '../../../../core/utils/responsive_padding.dart';
import '../../../../helper/get_image.dart';
import '../widgets/pokemon_card.dart';

class PokemonsPage extends StatefulWidget {
  const PokemonsPage({super.key});

  @override
  _PokemonsPageState createState() => _PokemonsPageState();
}

class _PokemonsPageState extends State<PokemonsPage> {
  late final PokemonsBloc _pokemonsBloc;

  @override
  void initState() {
    _pokemonsBloc = context.read<PokemonsBloc>();
    _pokemonsBloc.state.pokemonsController.addPageRequestListener((pageKey) {
      _pokemonsBloc.add(GetPokemonsEvent(pageKey));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OsossAppBar(
        params: AppBarParams(text: "Pokemons"),
      ),
      body: RefreshIndicator(
        onRefresh: () async => _pokemonsBloc.state.pokemonsController.refresh(),
        child: Padding(
          padding: HWEdgeInsets.only(top: 10.0),
          child: BlocSelector<PokemonsBloc, PokemonsState, PagingController<int, PokemonModel>>(
            selector: (state) => state.pokemonsController,
            builder: (context, pokemonsController) {
              return PagedListView<int, PokemonModel>.separated(
                padding: HWEdgeInsets.symmetric(horizontal: 40),
                separatorBuilder: (context, index) => 10.verticalSpace,
                builderDelegate: PagedChildBuilderDelegate<PokemonModel>(
                  itemBuilder: (context, pokemon, index) => PokemonCard(
                      pokemon: pokemon.copyWith(
                    svgImageUrl: getSvgImageByIndex(index),
                    pngImageUrl: getPngImageByIndex(index),
                  )),
                  firstPageProgressIndicatorBuilder: (context) => loading,
                  newPageProgressIndicatorBuilder: (context) => loading,
                ),
                pagingController: pokemonsController,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget get loading => const Center(child: CircularProgressIndicator.adaptive());
}
