import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_strings.g.dart';

/// This class represents the strings used in the Aiuta consent standalone page.
@JsonSerializable()
class AiutaConsentStandaloneStrings {
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

  /// Creates an [AiutaConsentStandaloneStrings] with the specified strings.
  ///
  /// The [consentTitle], [consentDescriptionHtml], and [consentButtonAccept] are required.
  /// The [consentPageTitle], [consentFooterHtml], and [consentButtonReject] are optional.
  ///
  /// The [consentButtonReject] will not be shown if null or [AiutaConsentStandaloneOnboardingPageFeature] is used.
  AiutaConsentStandaloneStrings({
    this.consentPageTitle,
    required this.consentTitle,
    required this.consentDescriptionHtml,
    this.consentFooterHtml,
    required this.consentButtonAccept,
    this.consentButtonReject,
  });

  // Internal json staff
  factory AiutaConsentStandaloneStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaConsentStandaloneStringsToJson(this);
}
