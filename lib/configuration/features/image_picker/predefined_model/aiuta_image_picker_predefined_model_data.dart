import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_predefined_model_data.g.dart';

/// Data model representing the user's preferred category for the
/// predefined model feature in the image picker.
@JsonSerializable()
class AiutaImagePickerPredefinedModelData {
  /// The ID of the preferred category of predefined models.
  final String preferredCategoryId;

  /// Creates an [AiutaImagePickerPredefinedModelData] with the given
  /// [preferredCategoryId].
  AiutaImagePickerPredefinedModelData({
    required this.preferredCategoryId,
  });

  // Internal json staff
  factory AiutaImagePickerPredefinedModelData.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelDataFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelDataToJson(this);
}
