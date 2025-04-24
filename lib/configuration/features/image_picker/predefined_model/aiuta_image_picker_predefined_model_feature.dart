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

  /// Create a new instance of AiutaImagePickerPredefinedModelFeature from a json map.
  factory AiutaImagePickerPredefinedModelFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelFeatureToJson(this);
}
