import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_predefined_model_strings.g.dart';

/// Strings used in the predefined model feature.
sealed class AiutaImagePickerPredefinedModelStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerPredefinedModelStrings] with the specified [type].
  AiutaImagePickerPredefinedModelStrings(this.type);

  // Internal json staff
  factory AiutaImagePickerPredefinedModelStrings.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerPredefinedModelStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerPredefinedModelStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker predefined model strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerPredefinedModelStrings`.
///
/// This class represents the default, built-in strings for the predefined model
/// feature. It does not require any custom implementation and uses
/// predefined behavior.
@JsonSerializable()
class AiutaImagePickerPredefinedModelStringsBuiltIn
    extends AiutaImagePickerPredefinedModelStrings {
  /// Creates an instance of the built-in image picker predefined model strings.
  AiutaImagePickerPredefinedModelStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerPredefinedModelStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerPredefinedModelStrings`.
///
/// This class allows for custom strings to be provided for the predefined model
/// feature, including custom titles, descriptions, and category names.
@JsonSerializable()
class AiutaImagePickerPredefinedModelStringsCustom
    extends AiutaImagePickerPredefinedModelStrings {
  /// Title for the predefined model page.
  final String predefinedModelPageTitle;

  /// Text for the "or" separator in the predefined model page.
  final String predefinedModelOr;

  /// Error message for an empty models list.
  final String predefinedModelErrorEmptyModelsList;

  /// Categories for predefined models.
  /// This is a map where the key is the category id and the value is
  /// the category title.
  ///
  /// The categories are usually should cover 2 categories with
  /// ids `man` and `woman`, but can be extended in the future or by your
  /// agreement with Aiuta.
  final Map<String, String> predefinedModelCategories;

  /// Creates an [AiutaImagePickerPredefinedModelStringsCustom] with the
  /// [predefinedModelPageTitle], [predefinedModelOr] string to be
  /// used in the image picker feature, an [predefinedModelErrorEmptyModelsList]
  /// message for an empty models list in case of misconfiguration on the Aiuta
  /// backend, and a [predefinedModelCategories] map for the titles of the
  /// predefined models categories.
  ///
  /// The [predefinedModelCategories] are usually should cover 2 categories with
  /// ids `man` and `woman`, but can be extended in the future or by your
  /// agreement with Aiuta.
  AiutaImagePickerPredefinedModelStringsCustom({
    required this.predefinedModelPageTitle,
    required this.predefinedModelOr,
    required this.predefinedModelErrorEmptyModelsList,
    required this.predefinedModelCategories,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerPredefinedModelStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelStringsCustomToJson(this);
}
