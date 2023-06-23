part of 'pokemons_bloc.dart';

class PokemonsState extends Equatable {
  PokemonsState({
    PagingController<int, PokemonModel>? pokemonsController,
  }) : pokemonsController = pokemonsController ?? PagingController(firstPageKey: 0);

  final PagingController<int, PokemonModel> pokemonsController;

  @override
  List<Object?> get props => [
        pokemonsController,
      ];
}
