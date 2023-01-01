// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubData _$$_GitHubDataFromJson(Map<String, dynamic> json) =>
    _$_GitHubData(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      language: json['language'] as String? ?? '',
      url: json['url'] as String? ?? '',
      owner: json['owner'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$_GitHubDataToJson(_$_GitHubData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'language': instance.language,
      'url': instance.url,
      'owner': instance.owner,
    };
