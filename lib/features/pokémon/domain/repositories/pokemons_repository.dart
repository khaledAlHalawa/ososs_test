import 'package:ososs_test/features/pok%C3%A9mon/data/models/pokemon_model.dart';
import '../../../../core/network/result/api_result.dart';

abstract class PokemonRepository {
  Future<ApiResult<List<PokemonModel>>> getPokemons(Map<String,dynamic> params);
}