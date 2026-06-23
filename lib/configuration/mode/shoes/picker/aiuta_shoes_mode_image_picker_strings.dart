import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_shoes_mode_image_picker_strings.g.dart';

/// Strings used in the shoes-mode image picker.
sealed class AiutaShoesModeImagePickerStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaShoesModeImagePickerStrings] with the specified [type].
  AiutaShoesModeImagePickerStrings(this.type);

  // Internal json staff
  factory AiutaShoesModeImagePickerStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaShoesModeImagePickerStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaShoesModeImagePickerStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown shoes mode image picker strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaShoesModeImagePickerStrings`.
@JsonSerializable()
class AiutaShoesModeImagePickerStringsBuiltIn
    extends AiutaShoesModeImagePickerStrings {
  /// Creates an instance of the built-in shoes mode image picker strings.
  AiutaShoesModeImagePickerStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaShoesModeImagePickerStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShoesModeImagePickerStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShoesModeImagePickerStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaShoesModeImagePickerStrings`.
@JsonSerializable()
class AiutaShoesModeImagePickerStringsCustom
    extends AiutaShoesModeImagePickerStrings {
  /// Text shown in the image picker empty state for shoes mode.
  final String imagePickerShoesDescriptionEmpty;

  /// Creates an [AiutaShoesModeImagePickerStringsCustom] with the
  /// [imagePickerShoesDescriptionEmpty] empty-state text.
  AiutaShoesModeImagePickerStringsCustom({
    required this.imagePickerShoesDescriptionEmpty,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaShoesModeImagePickerStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShoesModeImagePickerStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShoesModeImagePickerStringsCustomToJson(this);
}
