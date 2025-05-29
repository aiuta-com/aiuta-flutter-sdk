import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_strings.g.dart';

/// The strings used in the loading page feature.
sealed class AiutaTryOnLoadingPageStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnLoadingPageStrings] with the specified [type].
  AiutaTryOnLoadingPageStrings(this.type);

  // Internal json staff
  factory AiutaTryOnLoadingPageStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnLoadingPageStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnLoadingPageStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on loading page strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnLoadingPageStrings`.
///
/// This class represents the default, built-in strings for the loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageStringsBuiltIn extends AiutaTryOnLoadingPageStrings {
  /// Creates an instance of the built-in try-on loading page strings.
  AiutaTryOnLoadingPageStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnLoadingPageStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnLoadingPageStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnLoadingPageStrings`.
///
/// This class allows for custom strings to be provided for the loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageStringsCustom extends AiutaTryOnLoadingPageStrings {
  /// Status message for uploading an image.
  final String tryOnLoadingStatusUploadingImage;

  /// Status message for scanning the body.
  final String tryOnLoadingStatusScanningBody;

  /// Status message for generating an outfit.
  final String tryOnLoadingStatusGeneratingOutfit;

  /// Creates an [AiutaTryOnLoadingPageStringsCustom] with the required status messages.
  AiutaTryOnLoadingPageStringsCustom({
    required this.tryOnLoadingStatusUploadingImage,
    required this.tryOnLoadingStatusScanningBody,
    required this.tryOnLoadingStatusGeneratingOutfit,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnLoadingPageStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnLoadingPageStringsCustomToJson(this);
}
