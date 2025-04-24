import 'package:json_annotation/json_annotation.dart';

import 'aiuta_powered_by_colors.dart';
import 'aiuta_powered_by_strings.dart';

part 'aiuta_powered_by_feature.g.dart';

@JsonSerializable()
class AiutaPoweredByFeature {
  /// Strings used in the powered by feature.
  final AiutaPoweredByStrings strings;

  /// Colors used in the powered by feature.
  final AiutaPoweredByColors colors;

  AiutaPoweredByFeature({
    required this.strings,
    required this.colors,
  });

  /// Create a new instance of AiutaPoweredByFeature from a json map.
  factory AiutaPoweredByFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaPoweredByFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaPoweredByFeatureToJson(this);
}
