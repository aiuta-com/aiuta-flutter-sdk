import 'package:aiuta_flutter/configuration/features/base/aiuta_data_provider_type.dart';
import 'package:aiuta_flutter/models/images/aiuta_generated_image.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_generations_history_data_provider.g.dart';

/// The data provider for the generations history feature in the virtual try-on.
sealed class AiutaTryOnGenerationsHistoryDataProvider {
  AiutaDataProviderType type;

  /// Constructs an [AiutaTryOnGenerationsHistoryDataProvider] with the specified [type].
  AiutaTryOnGenerationsHistoryDataProvider(this.type);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryDataProvider.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnGenerationsHistoryDataProviderBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnGenerationsHistoryDataProviderCustom.fromJson(json);
      default:
        throw Exception('Unknown generation history data provider type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the [AiutaTryOnGenerationsHistoryDataProvider].
///
/// This class provides a default implementation for managing the generations
/// history in the try-on feature.
@JsonSerializable()
class AiutaTryOnGenerationsHistoryDataProviderBuiltIn
    extends AiutaTryOnGenerationsHistoryDataProvider {
  /// Creates an instance of [AiutaTryOnGenerationsHistoryDataProviderBuiltIn].
  AiutaTryOnGenerationsHistoryDataProviderBuiltIn()
      : super(AiutaDataProviderType.builtIn);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryDataProviderBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryDataProviderBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnGenerationsHistoryDataProviderBuiltInToJson(this);
}

/// A custom implementation of the [AiutaTryOnGenerationsHistoryDataProvider].
///
/// This class provides a way to manage the generations history in the try-on
/// feature with custom behavior.
@JsonSerializable()
class AiutaTryOnGenerationsHistoryDataProviderCustom
    extends AiutaTryOnGenerationsHistoryDataProvider {
  /// ValueListenable list of the generated images history.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final ValueListenable<List<AiutaGeneratedImage>> generatedImages;

  /// Callback to add generated images.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final Future<void> Function(List<AiutaGeneratedImage>, List<String>)
      addGeneratedImages;

  /// Callback to delete generated images.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final Future<void> Function(List<AiutaGeneratedImage>) deleteGeneratedImages;

  /// Creates an [AiutaTryOnGenerationsHistoryDataProvider] with the
  /// [generatedImages] list of users' generated images history,
  /// and [addGeneratedImages] and [deleteGeneratedImages] callbacks to
  /// add and delete images from the history.
  AiutaTryOnGenerationsHistoryDataProviderCustom({
    required this.generatedImages,
    required this.addGeneratedImages,
    required this.deleteGeneratedImages,
  }) : super(AiutaDataProviderType.custom);

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryDataProviderCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryDataProviderCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnGenerationsHistoryDataProviderCustomToJson(this);
}
