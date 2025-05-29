import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_strings.g.dart';

/// Strings used in the uploads history feature.
sealed class AiutaImagePickerUploadsHistoryStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerUploadsHistoryStrings] with the specified [type].
  AiutaImagePickerUploadsHistoryStrings(this.type);

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerUploadsHistoryStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerUploadsHistoryStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown uploads history strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerUploadsHistoryStrings`.
///
/// This class represents the default, built-in strings for the uploads history
/// feature. It does not require any custom implementation and uses predefined behavior.
@JsonSerializable()
class AiutaImagePickerUploadsHistoryStringsBuiltIn extends AiutaImagePickerUploadsHistoryStrings {
  /// Creates an instance of the built-in uploads history strings.
  AiutaImagePickerUploadsHistoryStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerUploadsHistoryStrings`.
///
/// This class allows for custom strings to be provided for the uploads history
/// feature, including custom button texts and titles.
@JsonSerializable()
class AiutaImagePickerUploadsHistoryStringsCustom extends AiutaImagePickerUploadsHistoryStrings {
  /// Text for the button to upload a new photo.
  final String uploadsHistoryButtonNewPhoto;

  /// Title for the uploads history section.
  final String uploadsHistoryTitle;

  /// Text for the button to change the photo.
  final String uploadsHistoryButtonChangePhoto;

  /// Creates an [AiutaImagePickerUploadsHistoryStringsCustom] with the
  /// [uploadsHistoryButtonNewPhoto], [uploadsHistoryTitle],
  /// and [uploadsHistoryButtonChangePhoto] strings.
  ///
  /// Note that if you are using the [AiutaImagePickerPredefinedModelFeature]
  /// the [uploadsHistoryButtonNewPhoto] should contain something like
  /// "Upload a photo or select a model" as the button text.
  AiutaImagePickerUploadsHistoryStringsCustom({
    required this.uploadsHistoryButtonNewPhoto,
    required this.uploadsHistoryTitle,
    required this.uploadsHistoryButtonChangePhoto,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryStringsCustomToJson(this);
}
