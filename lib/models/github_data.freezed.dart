// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GitHubData _$GitHubDataFromJson(Map<String, dynamic> json) {
  return _GitHubData.fromJson(json);
}

/// @nodoc
mixin _$GitHubData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  Map<dynamic, dynamic>? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitHubDataCopyWith<GitHubData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubDataCopyWith<$Res> {
  factory $GitHubDataCopyWith(
          GitHubData value, $Res Function(GitHubData) then) =
      _$GitHubDataCopyWithImpl<$Res, GitHubData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? language,
      String? url,
      Map<dynamic, dynamic>? owner});
}

/// @nodoc
class _$GitHubDataCopyWithImpl<$Res, $Val extends GitHubData>
    implements $GitHubDataCopyWith<$Res> {
  _$GitHubDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? url = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GitHubDataCopyWith<$Res>
    implements $GitHubDataCopyWith<$Res> {
  factory _$$_GitHubDataCopyWith(
          _$_GitHubData value, $Res Function(_$_GitHubData) then) =
      __$$_GitHubDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? language,
      String? url,
      Map<dynamic, dynamic>? owner});
}

/// @nodoc
class __$$_GitHubDataCopyWithImpl<$Res>
    extends _$GitHubDataCopyWithImpl<$Res, _$_GitHubData>
    implements _$$_GitHubDataCopyWith<$Res> {
  __$$_GitHubDataCopyWithImpl(
      _$_GitHubData _value, $Res Function(_$_GitHubData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? language = freezed,
    Object? url = freezed,
    Object? owner = freezed,
  }) {
    return _then(_$_GitHubData(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value._owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GitHubData with DiagnosticableTreeMixin implements _GitHubData {
  const _$_GitHubData(
      {this.id = 0,
      this.name = '',
      this.language = '',
      this.url = '',
      final Map<dynamic, dynamic>? owner = const {}})
      : _owner = owner;

  factory _$_GitHubData.fromJson(Map<String, dynamic> json) =>
      _$$_GitHubDataFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? language;
  @override
  @JsonKey()
  final String? url;
  final Map<dynamic, dynamic>? _owner;
  @override
  @JsonKey()
  Map<dynamic, dynamic>? get owner {
    final value = _owner;
    if (value == null) return null;
    if (_owner is EqualUnmodifiableMapView) return _owner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GitHubData(id: $id, name: $name, language: $language, url: $url, owner: $owner)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GitHubData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('owner', owner));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GitHubData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._owner, _owner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, language, url,
      const DeepCollectionEquality().hash(_owner));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GitHubDataCopyWith<_$_GitHubData> get copyWith =>
      __$$_GitHubDataCopyWithImpl<_$_GitHubData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GitHubDataToJson(
      this,
    );
  }
}

abstract class _GitHubData implements GitHubData {
  const factory _GitHubData(
      {final int? id,
      final String? name,
      final String? language,
      final String? url,
      final Map<dynamic, dynamic>? owner}) = _$_GitHubData;

  factory _GitHubData.fromJson(Map<String, dynamic> json) =
      _$_GitHubData.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get language;
  @override
  String? get url;
  @override
  Map<dynamic, dynamic>? get owner;
  @override
  @JsonKey(ignore: true)
  _$$_GitHubDataCopyWith<_$_GitHubData> get copyWith =>
      throw _privateConstructorUsedError;
}
