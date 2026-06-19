import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_shoes_mode_image_picker_predefined_models_strings.g.dart';

/// Strings used in the shoes-mode predefined-models selection.
sealed class AiutaShoesModeImagePickerPredefinedModelsStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaShoesModeImagePickerPredefinedModelsStrings] with the
  /// specified [type].
  AiutaShoesModeImagePickerPredefinedModelsStrings(this.type);

  // Internal json staff
  factory AiutaShoesModeImagePickerPredefinedModelsStrings.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn.fromJson(
            json);
      case 'custom':
        return AiutaShoesModeImagePickerPredefinedModelsStringsCustom.fromJson(
            json);
      default:
        throw Exception(
            'Unknown shoes mode image picker predefined models strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the
/// `AiutaShoesModeImagePickerPredefinedModelsStrings`.
@JsonSerializable()
class AiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn
    extends AiutaShoesModeImagePickerPredefinedModelsStrings {
  /// Creates an instance of the built-in shoes mode predefined models strings.
  AiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaShoesModeImagePickerPredefinedModelsStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShoesModeImagePickerPredefinedModelsStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShoesModeImagePickerPredefinedModelsStringsBuiltInToJson(this);
}

/// A custom implementation of the
/// `AiutaShoesModeImagePickerPredefinedModelsStrings`.
@JsonSerializable()
class AiutaShoesModeImagePickerPredefinedModelsStringsCustom
    extends AiutaShoesModeImagePickerPredefinedModelsStrings {
  /// Title of the example page for shoes.
  final String predefinedModelShoesPageTitle;

  /// Map of category IDs to their display names.
  ///
  /// The categories usually cover 2 categories with ids `female` and `male`,
  /// but can be extended in the future or by your agreement with Aiuta.
  final Map<String, String> predefinedModelShoesCategories;

  /// Creates an [AiutaShoesModeImagePickerPredefinedModelsStringsCustom] with
  /// the [predefinedModelShoesPageTitle] and the [predefinedModelShoesCategories]
  /// map of category titles.
  AiutaShoesModeImagePickerPredefinedModelsStringsCustom({
    required this.predefinedModelShoesPageTitle,
    required this.predefinedModelShoesCategories,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaShoesModeImagePickerPredefinedModelsStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShoesModeImagePickerPredefinedModelsStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaShoesModeImagePickerPredefinedModelsStringsCustomToJson(this);
}
