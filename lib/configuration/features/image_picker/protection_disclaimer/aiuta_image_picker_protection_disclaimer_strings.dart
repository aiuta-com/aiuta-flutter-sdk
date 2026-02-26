import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_protection_disclaimer_strings.g.dart';

/// Strings used in the protection disclaimer feature of the image picker.
sealed class AiutaImagePickerProtectionDisclaimerStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerProtectionDisclaimerStrings] with the specified [type].
  AiutaImagePickerProtectionDisclaimerStrings(this.type);

  // Internal json staff
  factory AiutaImagePickerProtectionDisclaimerStrings.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerProtectionDisclaimerStringsBuiltIn.fromJson(
            json);
      case 'custom':
        return AiutaImagePickerProtectionDisclaimerStringsCustom.fromJson(json);
      default:
        throw Exception(
            'Unknown image picker protection disclaimer strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerProtectionDisclaimerStrings`.
///
/// This class represents the default, built-in strings for the protection
/// disclaimer feature of the image picker.
@JsonSerializable()
class AiutaImagePickerProtectionDisclaimerStringsBuiltIn
    extends AiutaImagePickerProtectionDisclaimerStrings {
  /// Creates an instance of the built-in protection disclaimer strings.
  AiutaImagePickerProtectionDisclaimerStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerProtectionDisclaimerStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerProtectionDisclaimerStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerProtectionDisclaimerStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerProtectionDisclaimerStrings`.
///
/// This class allows for custom strings to be provided for the protection
/// disclaimer feature of the image picker.
@JsonSerializable()
class AiutaImagePickerProtectionDisclaimerStringsCustom
    extends AiutaImagePickerProtectionDisclaimerStrings {
  /// Text informing the user that their photos are protected and private.
  final String protectionDisclaimer;

  /// Creates an [AiutaImagePickerProtectionDisclaimerStringsCustom] with the
  /// required [protectionDisclaimer] text displayed in the disclaimer notice.
  AiutaImagePickerProtectionDisclaimerStringsCustom({
    required this.protectionDisclaimer,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerProtectionDisclaimerStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerProtectionDisclaimerStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerProtectionDisclaimerStringsCustomToJson(this);
}
