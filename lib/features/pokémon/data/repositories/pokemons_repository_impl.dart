
import 'package:injectable/injectable.dart';
import 'package:ososs_test/core/network/api_utils.dart';
import 'package:ososs_test/core/network/result/api_result.dart';
import 'package:ososs_test/features/pok%C3%A9mon/data/data_sources/pokemon_datasource.dart';
import 'package:ososs_test/features/pok%C3%A9mon/data/models/pokemon_model.dart';
import 'package:ososs_test/features/pok%C3%A9mon/domain/repositories/pokemons_repository.dart';

@Injectable(as: PokemonRepository)
class PokemonsRepositoryImpl implements PokemonRepository{
  const PokemonsRepositoryImpl(this.datasource);
  final PokemonDatasource datasource;

  @override
  Future<ApiResult<List<PokemonModel>>> getPokemons(Map<String, dynamic> params) {
   return toApiResult(() => datasource.getPokemonsApi(params),prefix: "pokemons");
  }

}