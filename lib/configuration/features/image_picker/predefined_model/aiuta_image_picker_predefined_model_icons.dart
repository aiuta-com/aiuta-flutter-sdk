import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_predefined_model_icons.g.dart';

/// Icons used in the predefined model feature of the image picker.
sealed class AiutaImagePickerPredefinedModelIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerPredefinedModelIcons] with the specified [type].
  AiutaImagePickerPredefinedModelIcons(this.type);

  // Internal json staff
  factory AiutaImagePickerPredefinedModelIcons.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerPredefinedModelIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerPredefinedModelIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker predefined model icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerPredefinedModelIcons`.
///
/// This class represents the default, built-in icons for the predefined model feature.
@JsonSerializable()
class AiutaImagePickerPredefinedModelIconsBuiltIn
    extends AiutaImagePickerPredefinedModelIcons {
  /// Creates an instance of the built-in image picker predefined model icons.
  AiutaImagePickerPredefinedModelIconsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerPredefinedModelIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerPredefinedModelIcons`.
///
/// This class allows for custom icons to be provided for the predefined model feature.
@JsonSerializable()
class AiutaImagePickerPredefinedModelIconsCustom
    extends AiutaImagePickerPredefinedModelIcons {
  /// Icon for the predefined model.
  final AiutaIcon selectModels24;

  /// Creates an [AiutaImagePickerPredefinedModelIcons] with the
  /// [selectModels24] icon for the button in the bottom sheet to select
  /// predefined models.
  AiutaImagePickerPredefinedModelIconsCustom({
    required this.selectModels24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerPredefinedModelIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerPredefinedModelIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerPredefinedModelIconsCustomToJson(this);
}
