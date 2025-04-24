import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import 'aiuta_share_data_provider.dart';
import 'aiuta_share_icons.dart';
import 'aiuta_share_strings.dart';
import 'watermark/aiuta_share_watermark_feature.dart';

part 'aiuta_share_feature.g.dart';

@JsonSerializable()
class AiutaShareFeature {
  /// Watermark feature (nullable).
  final AiutaShareWatermarkFeature? watermark;

  /// Icons used in the share feature.
  final AiutaShareIcons icons;

  /// Strings used in the share feature.
  final AiutaShareStrings strings;

  /// Data provider for the share feature (nullable).
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaShareDataProvider? dataProvider;

  AiutaShareFeature({
    this.watermark,
    required this.icons,
    required this.strings,
    this.dataProvider,
  });

  /// Create a new instance of AiutaShareFeature from a json map.
  factory AiutaShareFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaShareFeatureToJson(this);
}
