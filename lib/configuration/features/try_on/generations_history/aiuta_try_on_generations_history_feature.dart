import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_generations_history_data_provider.dart';
import 'aiuta_try_on_generations_history_icons.dart';
import 'aiuta_try_on_generations_history_strings.dart';

part 'aiuta_try_on_generations_history_feature.g.dart';

@JsonSerializable()
class AiutaTryOnGenerationsHistoryFeature {
  /// Icons used in the generations history feature.
  final AiutaTryOnGenerationsHistoryIcons icons;

  /// Strings used in the generations history feature.
  final AiutaTryOnGenerationsHistoryStrings strings;

  /// Data provider for the generations history feature (nullable).
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaTryOnGenerationsHistoryDataProvider? dataProvider;

  AiutaTryOnGenerationsHistoryFeature({
    required this.icons,
    required this.strings,
    this.dataProvider,
  });

  /// Create a new instance of AiutaTryOnGenerationsHistoryFeature from a json map.
  factory AiutaTryOnGenerationsHistoryFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnGenerationsHistoryFeatureToJson(this);
}
