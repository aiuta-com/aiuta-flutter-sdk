import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_icons.g.dart';

/// This class contains the icons used in the consent standalone feature.
sealed class AiutaConsentStandaloneIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaConsentStandaloneIcons] with the specified [type].
  AiutaConsentStandaloneIcons(this.type);

  // Internal json staff
  factory AiutaConsentStandaloneIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'custom':
        return AiutaConsentStandaloneIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown consent standalone icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A custom implementation of the `AiutaConsentStandaloneIcons`.
///
/// This class allows for custom icons to be provided for the consent standalone feature.
@JsonSerializable()
class AiutaConsentStandaloneIconsCustom extends AiutaConsentStandaloneIcons {
  /// The icon used for the consent title to be displayed after the title text.
  final AiutaIcon consentTitle24;

  /// Creates an [AiutaConsentStandaloneIconsCustom] with the optional [consentTitle24] icon.
  AiutaConsentStandaloneIconsCustom({
    required this.consentTitle24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaConsentStandaloneIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneIconsCustomToJson(this);
}
