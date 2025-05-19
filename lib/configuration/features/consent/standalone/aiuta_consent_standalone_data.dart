import 'package:aiuta_flutter/models/consent/aiuta_consent.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_data.g.dart';

/// This class represents the data structure for standalone consent.
@JsonSerializable()
class AiutaConsentStandaloneData {
  /// List of consents that are asked to the user.
  ///
  /// SDK will match the identifiers with the ones obtained from the user
  /// in the [AiutaConsentStandaloneDataProvider], and will show the consent
  /// screen only if there are missing required consents.
  final List<AiutaConsent> consents;

  /// Creates an [AiutaConsentStandaloneData] with the given [consents] list.
  AiutaConsentStandaloneData({
    required this.consents,
  });

  // Internal json staff
  factory AiutaConsentStandaloneData.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneDataFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaConsentStandaloneDataToJson(this);
}
