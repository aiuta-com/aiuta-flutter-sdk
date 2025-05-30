import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_embedded_strings.g.dart';

/// This class represents the strings used in the Aiuta consent
/// embedded into the onboarding pages.
sealed class AiutaConsentEmbeddedStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaConsentEmbeddedStrings] with the specified [type].
  AiutaConsentEmbeddedStrings(this.type);

  // Internal json staff
  factory AiutaConsentEmbeddedStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaConsentEmbeddedStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaConsentEmbeddedStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown consent embedded strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaConsentEmbeddedStrings`.
///
/// This class represents the default, built-in strings for the consent
/// embedded feature. It does not require any custom implementation and uses
/// predefined behavior.
@JsonSerializable()
class AiutaConsentEmbeddedStringsBuiltIn extends AiutaConsentEmbeddedStrings {
  /// The URL of the terms of service.
  final String termsOfServiceUrl;

  /// Creates an instance of the built-in consent embedded strings.
  AiutaConsentEmbeddedStringsBuiltIn({
    required this.termsOfServiceUrl,
  }) : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaConsentEmbeddedStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentEmbeddedStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentEmbeddedStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaConsentEmbeddedStrings`.
///
/// This class allows for custom strings to be provided for the consent
/// embedded feature, including custom HTML content.
@JsonSerializable()
class AiutaConsentEmbeddedStringsCustom extends AiutaConsentEmbeddedStrings {
  /// HTML content for the consent.
  /// May contains a links with the href attribute.
  final String consentHtml;

  /// Creates an [AiutaConsentEmbeddedStringsCustom] with the [consentHtml] string.
  AiutaConsentEmbeddedStringsCustom({
    required this.consentHtml,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaConsentEmbeddedStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentEmbeddedStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentEmbeddedStringsCustomToJson(this);
}
