import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_predefined_model_strings.g.dart';

/// Strings used in the predefined model feature.
@JsonSerializable()
class AiutaImagePickerPredefinedModelStrings {
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

  /// Creates an [AiutaImagePickerPredefinedModelStrings] with the
  /// [predefinedModelPageTitle], [predefinedModelOr] string to be
  /// used in the image picker feature, an [predefinedModelErrorEmptyModelsList]
  /// message for an empty models list in case of misconfiguration on the Aiuta
  /// backend, and a [predefinedModelCategories] map for the titles of the
  /// predefined models categories.
  ///
  /// The [predefinedModelCategories] are usually should cover 2 categories with
  /// ids `man` and `woman`, but can be extended in the future or by your
  /// agreement with Aiuta.
  AiutaImagePickerPredefinedModelStrings({
    required this.predefinedModelPageTitle,
    required this.predefinedModelOr,
    required this.predefinedModelErrorEmptyModelsList,
    required this.predefinedModelCategories,
  });

  // Internal json staff
  factory AiutaImagePickerPredefinedModelStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelStringsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelStringsToJson(this);
}
