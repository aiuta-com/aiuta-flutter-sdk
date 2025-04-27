import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_icons.g.dart';

/// This class contains the icons used in the consent standalone feature.
@JsonSerializable()
class AiutaConsentStandaloneIcons {
  /// The icon used for the consent title to be displayed after the title text.
  final AiutaIcon? consentTitle24;

  /// Creates an [AiutaConsentStandaloneIcons] with the optional [consentTitle24] icon.
  AiutaConsentStandaloneIcons({
    this.consentTitle24,
  });

  // Internal json staff
  factory AiutaConsentStandaloneIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaConsentStandaloneIconsToJson(this);
}
