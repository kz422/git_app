// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'github_data.freezed.dart';
part 'github_data.g.dart';

@freezed
class GitHubData with _$GitHubData {
  const factory GitHubData({
    @Default(0) int? id,
    @Default('') String? name,
    @Default('') String? language,
    @Default('') String? url,
    @Default({}) Map? owner,
  }) = _GitHubData;

  factory GitHubData.fromJson(Map<String, dynamic> json) =>
      _$GitHubDataFromJson(json);
}
