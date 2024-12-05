import 'package:dio/dio.dart';
import 'package:inspection_control/model/endereco.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://viacep.com.br/ws')
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET('/{cep}/json/')
  Future<Endereco> getEndereco(@Path() String cep);
}
