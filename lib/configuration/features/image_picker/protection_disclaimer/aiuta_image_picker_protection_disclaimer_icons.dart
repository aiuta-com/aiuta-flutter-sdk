import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_protection_disclaimer_icons.g.dart';

/// Icons used in the protection disclaimer feature of the image picker.
sealed class AiutaImagePickerProtectionDisclaimerIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerProtectionDisclaimerIcons] with the specified [type].
  AiutaImagePickerProtectionDisclaimerIcons(this.type);

  // Internal json staff
  factory AiutaImagePickerProtectionDisclaimerIcons.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'custom':
        return AiutaImagePickerProtectionDisclaimerIconsCustom.fromJson(json);
      default:
        throw Exception(
            'Unknown image picker protection disclaimer icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A custom implementation of the `AiutaImagePickerProtectionDisclaimerIcons`.
///
/// This class allows for custom icons to be provided for the protection
/// disclaimer feature.
@JsonSerializable()
class AiutaImagePickerProtectionDisclaimerIconsCustom
    extends AiutaImagePickerProtectionDisclaimerIcons {
  /// Icon for the protection disclaimer.
  final AiutaIcon protection16;

  /// Creates an [AiutaImagePickerProtectionDisclaimerIconsCustom] with the
  /// required [protection16] icon displayed in the protection disclaimer.
  AiutaImagePickerProtectionDisclaimerIconsCustom({
    required this.protection16,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerProtectionDisclaimerIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerProtectionDisclaimerIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerProtectionDisclaimerIconsCustomToJson(this);
}
