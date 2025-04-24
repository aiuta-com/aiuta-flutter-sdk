import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_predefined_model_strings.g.dart';

@JsonSerializable()
class AiutaImagePickerPredefinedModelStrings {
  /// Title for the predefined model page.
  final String predefinedModelPageTitle;

  /// Text for the "or" separator in the predefined model page.
  final String predefinedModelOr;

  /// Error message for an empty models list.
  final String predefinedModelErrorEmptyModelsList;

  /// Categories for predefined models.
  final Map<String, String> predefinedModelCategories;

  AiutaImagePickerPredefinedModelStrings({
    required this.predefinedModelPageTitle,
    required this.predefinedModelOr,
    required this.predefinedModelErrorEmptyModelsList,
    required this.predefinedModelCategories,
  });

  /// Create a new instance of AiutaImagePickerPredefinedModelStrings from a json map.
  factory AiutaImagePickerPredefinedModelStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelStringsToJson(this);
}
