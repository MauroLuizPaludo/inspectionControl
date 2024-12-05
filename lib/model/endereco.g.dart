// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endereco _$EnderecoFromJson(Map<String, dynamic> json) => Endereco(
      localidade: json['localidade'] as String?,
      cep: json['cep'] as String?,
      estado: json['estado'] as String?,
    );

Map<String, dynamic> _$EnderecoToJson(Endereco instance) => <String, dynamic>{
      'localidade': instance.localidade,
      'cep': instance.cep,
      'estado': instance.estado,
    };
