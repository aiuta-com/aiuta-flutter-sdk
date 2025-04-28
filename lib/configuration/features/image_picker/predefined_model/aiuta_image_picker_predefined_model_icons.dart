import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_predefined_model_icons.g.dart';

/// Icons used in the predefined model feature.
@JsonSerializable()
class AiutaImagePickerPredefinedModelIcons {
  /// Icon for selecting predefined models.
  final AiutaIcon selectModels24;

  /// Creates an [AiutaImagePickerPredefinedModelIcons] with the
  /// [selectModels24] icon for the button in the bottom sheet to select
  /// predefined models.
  AiutaImagePickerPredefinedModelIcons({
    required this.selectModels24,
  });

  // Internal json staff
  factory AiutaImagePickerPredefinedModelIcons.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelIconsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelIconsToJson(this);
}
