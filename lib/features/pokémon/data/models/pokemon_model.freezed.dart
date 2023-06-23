// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) {
  return _PokemonModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonModel {
  String get name => throw _privateConstructorUsedError;
  String? get svgImageUrl => throw _privateConstructorUsedError;
  String? get pngImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonModelCopyWith<PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonModelCopyWith<$Res> {
  factory $PokemonModelCopyWith(
          PokemonModel value, $Res Function(PokemonModel) then) =
      _$PokemonModelCopyWithImpl<$Res, PokemonModel>;
  @useResult
  $Res call({String name, String? svgImageUrl, String? pngImageUrl});
}

/// @nodoc
class _$PokemonModelCopyWithImpl<$Res, $Val extends PokemonModel>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? svgImageUrl = freezed,
    Object? pngImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      svgImageUrl: freezed == svgImageUrl
          ? _value.svgImageUrl
          : svgImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pngImageUrl: freezed == pngImageUrl
          ? _value.pngImageUrl
          : pngImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonModelCopyWith<$Res>
    implements $PokemonModelCopyWith<$Res> {
  factory _$$_PokemonModelCopyWith(
          _$_PokemonModel value, $Res Function(_$_PokemonModel) then) =
      __$$_PokemonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? svgImageUrl, String? pngImageUrl});
}

/// @nodoc
class __$$_PokemonModelCopyWithImpl<$Res>
    extends _$PokemonModelCopyWithImpl<$Res, _$_PokemonModel>
    implements _$$_PokemonModelCopyWith<$Res> {
  __$$_PokemonModelCopyWithImpl(
      _$_PokemonModel _value, $Res Function(_$_PokemonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? svgImageUrl = freezed,
    Object? pngImageUrl = freezed,
  }) {
    return _then(_$_PokemonModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      svgImageUrl: freezed == svgImageUrl
          ? _value.svgImageUrl
          : svgImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pngImageUrl: freezed == pngImageUrl
          ? _value.pngImageUrl
          : pngImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PokemonModel implements _PokemonModel {
  const _$_PokemonModel(
      {required this.name, this.svgImageUrl, this.pngImageUrl});

  factory _$_PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonModelFromJson(json);

  @override
  final String name;
  @override
  final String? svgImageUrl;
  @override
  final String? pngImageUrl;

  @override
  String toString() {
    return 'PokemonModel(name: $name, svgImageUrl: $svgImageUrl, pngImageUrl: $pngImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokemonModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.svgImageUrl, svgImageUrl) ||
                other.svgImageUrl == svgImageUrl) &&
            (identical(other.pngImageUrl, pngImageUrl) ||
                other.pngImageUrl == pngImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, svgImageUrl, pngImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonModelCopyWith<_$_PokemonModel> get copyWith =>
      __$$_PokemonModelCopyWithImpl<_$_PokemonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonModelToJson(
      this,
    );
  }
}

abstract class _PokemonModel implements PokemonModel {
  const factory _PokemonModel(
      {required final String name,
      final String? svgImageUrl,
      final String? pngImageUrl}) = _$_PokemonModel;

  factory _PokemonModel.fromJson(Map<String, dynamic> json) =
      _$_PokemonModel.fromJson;

  @override
  String get name;
  @override
  String? get svgImageUrl;
  @override
  String? get pngImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonModelCopyWith<_$_PokemonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
