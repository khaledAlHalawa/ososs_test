// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonModel _$$_PokemonModelFromJson(Map<String, dynamic> json) =>
    _$_PokemonModel(
      name: json['name'] as String,
      svgImageUrl: json['svgImageUrl'] as String?,
      pngImageUrl: json['pngImageUrl'] as String?,
    );

Map<String, dynamic> _$$_PokemonModelToJson(_$_PokemonModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'svgImageUrl': instance.svgImageUrl,
      'pngImageUrl': instance.pngImageUrl,
    };
