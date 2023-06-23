part of 'pokemons_bloc.dart';

abstract class PokemonsEvent extends Equatable {
  const PokemonsEvent();
}


class GetPokemonsEvent extends PokemonsEvent{
  const GetPokemonsEvent(this.page);

  final int page;

  @override
  List<Object?> get props => [];
}