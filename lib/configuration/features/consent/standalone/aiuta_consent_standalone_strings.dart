import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_strings.g.dart';

/// This class represents the strings used in the Aiuta consent standalone page.
sealed class AiutaConsentStandaloneStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaConsentStandaloneStrings] with the specified [type].
  AiutaConsentStandaloneStrings(this.type);

  // Internal json staff
  factory AiutaConsentStandaloneStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaConsentStandaloneStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaConsentStandaloneStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown consent standalone strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaConsentStandaloneStrings`.
///
/// This class represents the default, built-in strings for the consent
/// standalone feature. It does not require any custom implementation and uses
/// predefined behavior.
@JsonSerializable()
class AiutaConsentStandaloneStringsBuiltIn extends AiutaConsentStandaloneStrings {
  /// Creates an instance of the built-in consent standalone strings.
  AiutaConsentStandaloneStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaConsentStandaloneStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaConsentStandaloneStrings`.
///
/// This class allows for custom strings to be provided for the consent
/// standalone feature, including custom titles, descriptions, and button texts.
@JsonSerializable()
class AiutaConsentStandaloneStringsCustom extends AiutaConsentStandaloneStrings {
  /// Title for the consent page (optional).
  final String? consentPageTitle;

  /// Title for the consent section.
  final String consentTitle;

  /// HTML description for the consent section.
  final String consentDescriptionHtml;

  /// HTML footer for the consent section (optional).
  final String? consentFooterHtml;

  /// Button text for accepting the consent.
  final String consentButtonAccept;

  /// Button text for rejecting the consent (optional).
  /// Will not be shown if null or [standaloneOnboardingPage] mode.
  final String? consentButtonReject;

  /// Creates an [AiutaConsentStandaloneStringsCustom] with the specified strings.
  ///
  /// The [consentTitle], [consentDescriptionHtml], and [consentButtonAccept] are required.
  /// The [consentPageTitle], [consentFooterHtml], and [consentButtonReject] are optional.
  ///
  /// The [consentButtonReject] will not be shown if null or [AiutaConsentStandaloneOnboardingPageFeature] is used.
  AiutaConsentStandaloneStringsCustom({
    this.consentPageTitle,
    required this.consentTitle,
    required this.consentDescriptionHtml,
    this.consentFooterHtml,
    required this.consentButtonAccept,
    this.consentButtonReject,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaConsentStandaloneStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneStringsCustomToJson(this);
}
