import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_embedded_strings.g.dart';

/// This class represents the strings used in the Aiuta consent
/// embedded into the onboarding pages.
@JsonSerializable()
class AiutaConsentEmbeddedStrings {
  /// HTML content for the consent.
  /// May contains a links with the href attribute.
  final String consentHtml;

  /// Creates an [AiutaConsentEmbeddedStrings] with the [consentHtml] string.
  AiutaConsentEmbeddedStrings({
    required this.consentHtml,
  });

  // Internal json staff
  factory AiutaConsentEmbeddedStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentEmbeddedStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaConsentEmbeddedStringsToJson(this);
}
