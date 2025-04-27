import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_standalone_styles.g.dart';

/// This class is used to configure the styles of the consent standalone components.
@JsonSerializable()
class AiutaConsentStandaloneStyles {
  /// If true, the consents will be drawn with borders around them.
  final bool drawBordersAroundConsents;

  /// Create an [AiutaConsentStandaloneStyles] with the given style options.
  AiutaConsentStandaloneStyles({
    required this.drawBordersAroundConsents,
  });

  // Internal json staff
  factory AiutaConsentStandaloneStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneStylesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaConsentStandaloneStylesToJson(this);
}
