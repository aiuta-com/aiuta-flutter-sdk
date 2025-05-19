import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_fit_disclaimer_icons.g.dart';

/// The icons used in the Fit Disclaimer feature.
@JsonSerializable()
class AiutaTryOnFitDisclaimerIcons {
  /// Icon for the Fit Disclaimer (optional).
  final AiutaIcon? info20;

  /// Creates an [AiutaTryOnFitDisclaimerIcons] with the optional [info20]
  /// for the Fit Disclaimer.
  AiutaTryOnFitDisclaimerIcons({
    this.info20,
  });

  // Internal json staff
  factory AiutaTryOnFitDisclaimerIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFitDisclaimerIconsToJson(this);
}
