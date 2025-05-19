import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_strings.g.dart';

/// The strings used in the loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageStrings {
  /// Status message for uploading an image.
  final String tryOnLoadingStatusUploadingImage;

  /// Status message for scanning the body.
  final String tryOnLoadingStatusScanningBody;

  /// Status message for generating an outfit.
  final String tryOnLoadingStatusGeneratingOutfit;

  /// Creates an [AiutaTryOnLoadingPageStrings] with the required status messages.
  AiutaTryOnLoadingPageStrings({
    required this.tryOnLoadingStatusUploadingImage,
    required this.tryOnLoadingStatusScanningBody,
    required this.tryOnLoadingStatusGeneratingOutfit,
  });

  // Internal json staff
  factory AiutaTryOnLoadingPageStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageStringsToJson(this);
}
