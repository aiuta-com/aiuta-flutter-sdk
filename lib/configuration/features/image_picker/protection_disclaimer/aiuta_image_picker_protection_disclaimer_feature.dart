import 'package:aiuta_flutter/configuration/features/image_picker/protection_disclaimer/aiuta_image_picker_protection_disclaimer_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/protection_disclaimer/aiuta_image_picker_protection_disclaimer_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_protection_disclaimer_feature.g.dart';

@JsonSerializable()
class AiutaImagePickerProtectionDisclaimerFeature {
  /// Icons used in the protection disclaimer feature.
  final AiutaImagePickerProtectionDisclaimerIcons icons;

  /// Strings used in the protection disclaimer feature.
  final AiutaImagePickerProtectionDisclaimerStrings strings;

  AiutaImagePickerProtectionDisclaimerFeature({
    required this.icons,
    required this.strings,
  });

  /// Creates a built-in protection disclaimer feature configuration with default settings.
  factory AiutaImagePickerProtectionDisclaimerFeature.builtIn({
    required AiutaImagePickerProtectionDisclaimerIcons icons,
  }) {
    return AiutaImagePickerProtectionDisclaimerFeature(
      icons: icons,
      strings: AiutaImagePickerProtectionDisclaimerStringsBuiltIn(),
    );
  }

  // Internal json staff
  factory AiutaImagePickerProtectionDisclaimerFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerProtectionDisclaimerFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerProtectionDisclaimerFeatureToJson(this);
}
