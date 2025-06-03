import 'package:aiuta_flutter/configuration/features/share/aiuta_share_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_icons.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_strings.dart';
import 'package:aiuta_flutter/configuration/features/share/watermark/aiuta_share_watermark_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_feature.g.dart';

/// Share feature adds the ability to share generated images from the SDK
/// using the native share dialog.
@JsonSerializable()
class AiutaShareFeature {
  /// Watermark feature (nullable).
  /// This feature is used to add a watermark to the shared images.
  /// If not provided, no watermark will be added.
  final AiutaShareWatermarkFeature? watermark;

  /// Icons used in the share feature.
  final AiutaShareIcons icons;

  /// Strings used in the share feature.
  final AiutaShareStrings strings;

  /// The optional data provider for the share feature to provide
  /// additional text to be shared along with the generated images.
  final AiutaShareDataProvider? dataProvider;

  /// Creates an [AiutaShareFeature] with optional [watermark] to be added to
  /// the shared images, [icons] and [strings] for the share feature, and
  /// optional [dataProvider] for additional text to be shared.
  AiutaShareFeature({
    this.watermark,
    required this.icons,
    required this.strings,
    this.dataProvider,
  });

  /// Creates a built-in share feature configuration with default settings.
  factory AiutaShareFeature.builtIn() {
    return AiutaShareFeature(
      icons: AiutaShareIconsBuiltIn(),
      strings: AiutaShareStringsBuiltIn(),
    );
  }

  // Internal json staff
  factory AiutaShareFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShareFeatureToJson(this);
}
