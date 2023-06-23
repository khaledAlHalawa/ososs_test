import 'package:injectable/injectable.dart';
import 'package:ososs_test/features/pok%C3%A9mon/data/models/pokemon_model.dart';
import '../../../../core/network/result/api_result.dart';
import '../../../../core/use_case/use_case.dart';
import '../repositories/pokemons_repository.dart';

const int kLimitPage = 20;

@injectable
class GetPokemonsUsecase extends UseCase<List<PokemonModel>, GetPokemonsUsecaseParams> {
  GetPokemonsUsecase(this.repository);

  final PokemonRepository repository;

  @override
  Future<ApiResult<List<PokemonModel>>> call(GetPokemonsUsecaseParams params) {
    return repository.getPokemons(params.toMap);
  }
}

class GetPokemonsUsecaseParams {
  const GetPokemonsUsecaseParams({
    required this.offset,
    this.limit = kLimitPage,
  });

  final int offset;
  final int limit;

  Map<String, dynamic> get toMap => {
        'offset': offset.toString(),
        'limit': limit.toString(),
      };
}
