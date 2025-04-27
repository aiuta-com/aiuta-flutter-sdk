import 'package:aiuta_flutter/models/consent/aiuta_consent_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent.g.dart';

/// Represents the consent information for the SDK.
@JsonSerializable()
class AiutaConsent {
  /// Unique identifier for the consent.
  ///
  /// Will be used to identify the consent to match with the [obtainedConsentsIds]
  /// in the [AiutaConsentStandaloneDataProvider] to determine if the consent page should be shown.
  ///
  /// This identifier will be passed in the list to the [AiutaConsentStandaloneDataProvider]
  /// [obtainConsentsIds] callback when the user has given consents.
  ///
  /// This identifier should be unique for each consent and should not be changed.
  final String id;

  /// Defines the way of obtaining consents for Aiuta to process users' photos
  /// and optionally additional consents for host app to use uploaded and generated photos.
  final AiutaConsentType type;

  /// The HTML content representing the consent information.
  /// May contain links to the relevant documents.
  final String html;

  /// Creates an [AiutaConsent] with the specified [id], [type] defining the way
  /// of obtaining consents and [html] text content, representing the consent information.
  AiutaConsent({
    required this.id,
    required this.type,
    required this.html,
  });

  // Internal json staff
  factory AiutaConsent.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaConsentToJson(this);
}
