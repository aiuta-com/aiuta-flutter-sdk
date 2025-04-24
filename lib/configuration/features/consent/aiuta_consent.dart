import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent.g.dart';

@JsonSerializable()
class AiutaConsent {
  /// Unique identifier for the consent.
  final String id;

  /// HTML content of the consent.
  final String consentHtml;

  /// Whether the consent is required.
  final bool isRequired;

  AiutaConsent({
    required this.id,
    required this.consentHtml,
    required this.isRequired,
  });

  /// Factory method to create AiutaConsent from json.
  factory AiutaConsent.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentFromJson(json);

  /// Method to convert AiutaConsent to json.
  Map<String, dynamic> toJson() => _$AiutaConsentToJson(this);
}
