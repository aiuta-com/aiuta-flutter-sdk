import 'package:aiuta_flutter/configuration/mode/shoes/picker/predefined_model/aiuta_shoes_mode_image_picker_predefined_models_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_shoes_mode_image_picker_predefined_models.g.dart';

/// Shoes-mode overrides for the predefined-models selection in the image picker.
@JsonSerializable()
class AiutaShoesModeImagePickerPredefinedModels {
  /// Text strings for the predefined-models selection.
  final AiutaShoesModeImagePickerPredefinedModelsStrings strings;

  /// Creates an [AiutaShoesModeImagePickerPredefinedModels] with the [strings]
  /// for the predefined-models selection.
  AiutaShoesModeImagePickerPredefinedModels({
    required this.strings,
  });

  // Internal json staff
  factory AiutaShoesModeImagePickerPredefinedModels.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaShoesModeImagePickerPredefinedModelsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaShoesModeImagePickerPredefinedModelsToJson(this);
}
