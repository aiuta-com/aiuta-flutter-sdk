import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_predefined_model_icons.g.dart';

@JsonSerializable()
class AiutaImagePickerPredefinedModelIcons {
  /// Icon for selecting predefined models.
  final AiutaIcon selectModels24;

  AiutaImagePickerPredefinedModelIcons({
    required this.selectModels24,
  });

  /// Create a new instance of AiutaImagePickerPredefinedModelIcons from a json map.
  factory AiutaImagePickerPredefinedModelIcons.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelIconsToJson(this);
}
