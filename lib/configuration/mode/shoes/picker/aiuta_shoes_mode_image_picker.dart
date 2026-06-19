import 'package:aiuta_flutter/configuration/mode/media/aiuta_media.dart';
import 'package:aiuta_flutter/configuration/mode/shoes/picker/aiuta_shoes_mode_image_picker_strings.dart';
import 'package:aiuta_flutter/configuration/mode/shoes/picker/predefined_model/aiuta_shoes_mode_image_picker_predefined_models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_shoes_mode_image_picker.g.dart';

/// Shoes-mode overrides for the image picker surfaces.
@JsonSerializable()
class AiutaShoesModeImagePicker {
  /// Overrides for the predefined-models selection.
  final AiutaShoesModeImagePickerPredefinedModels predefinedModels;

  /// Example media shown in the shoes-mode image picker to illustrate the
  /// expected input.
  final AiutaMedia images;

  /// Text strings for the shoes-mode image picker.
  final AiutaShoesModeImagePickerStrings strings;

  /// Creates an [AiutaShoesModeImagePicker] with the [predefinedModels]
  /// selection overrides, the example [images] and the [strings].
  AiutaShoesModeImagePicker({
    required this.predefinedModels,
    required this.images,
    required this.strings,
  });

  // Internal json staff
  factory AiutaShoesModeImagePicker.fromJson(Map<String, dynamic> json) =>
      _$AiutaShoesModeImagePickerFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShoesModeImagePickerToJson(this);
}
