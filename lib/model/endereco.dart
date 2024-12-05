import 'package:json_annotation/json_annotation.dart';

part 'endereco.g.dart';

@JsonSerializable()

class Endereco {
  const Endereco({
    this.localidade,
    this.cep,
    this.estado,
  });

  factory Endereco.fromJson(Map<String, dynamic> json) =>
      _$EnderecoFromJson(json);

  final String? localidade;
  final String? cep;
  final String? estado;

  Map<String, dynamic> toJson() => _$EnderecoToJson(this);
}
