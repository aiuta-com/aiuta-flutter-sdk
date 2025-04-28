import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_strings.dart';

part 'aiuta_image_picker_predefined_model_feature.g.dart';

@JsonSerializable()
class AiutaImagePickerPredefinedModelFeature {
  /// Icons used in the predefined model feature.
  final AiutaImagePickerPredefinedModelIcons icons;

  /// Strings used in the predefined model feature.
  final AiutaImagePickerPredefinedModelStrings strings;

  AiutaImagePickerPredefinedModelFeature({
    required this.icons,
    required this.strings,
  });

  // Internal json staff
  factory AiutaImagePickerPredefinedModelFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelFeatureToJson(this);
}
