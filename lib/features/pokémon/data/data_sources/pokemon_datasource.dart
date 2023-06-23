import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:ososs_test/core/utils/extensions/list.dart';
import 'package:ososs_test/features/pok%C3%A9mon/data/models/pokemon_model.dart';
import '../../../../core/network/client.dart';
import '../../../../core/network/client_config.dart';

@injectable
class PokemonDatasource {
  PokemonDatasource(this.client);

  final Dio client;

  Future<List<PokemonModel>> getPokemonsApi(Map<String, dynamic> params) async {
    final ClientApi clientApi = ClientApi();

    Response<Map<String, dynamic>> response = await clientApi.request(
      RequestConfig(
        endpoint: "pokemon",
        clientMethod: ClientMethod.get,
        queryParameters: params,
      ),
    );

    final list = await (response.data?['results'] as List<dynamic>).computeFromJson(PokemonModel.fromJson);

    return list;
  }
}
