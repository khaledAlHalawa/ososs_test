import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';
import 'package:ososs_test/features/pok%C3%A9mon/data/models/pokemon_model.dart';
import 'package:ososs_test/features/pok%C3%A9mon/domain/use_cases/get_pokemons_usecase.dart';

part 'pokemons_event.dart';

part 'pokemons_state.dart';

@injectable
class PokemonsBloc extends Bloc<PokemonsEvent, PokemonsState> {
  PokemonsBloc(this._getPokemonsUsecase) : super(PokemonsState()) {
    on<GetPokemonsEvent>(_onGetPokemonsEvent);
  }

  final GetPokemonsUsecase _getPokemonsUsecase;

  FutureOr<void> _onGetPokemonsEvent(GetPokemonsEvent event, Emitter<PokemonsState> emit) async {
    final response = await _getPokemonsUsecase(GetPokemonsUsecaseParams(offset: event.page * kLimitPage));

    response.map(
      success: (value) {
        final pokemons = value.data;

        if (value.data.length < kLimitPage) {
          state.pokemonsController.appendLastPage(pokemons);
        } else {
          final nextPage = event.page + 1;
          state.pokemonsController.appendPage(pokemons, nextPage);
        }
      },
      failure: (value) => state.pokemonsController.error = value.message,
    );
  }
}
