import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_fit_disclaimer_icons.g.dart';

@JsonSerializable()
class AiutaTryOnFitDisclaimerIcons {
  /// Icon for the Fit Disclaimer (nullable).
  final AiutaIcon? info20;

  AiutaTryOnFitDisclaimerIcons({
    this.info20,
  });

  /// Create a new instance of AiutaTryOnFitDisclaimerIcons from a json map.
  factory AiutaTryOnFitDisclaimerIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnFitDisclaimerIconsToJson(this);
}
