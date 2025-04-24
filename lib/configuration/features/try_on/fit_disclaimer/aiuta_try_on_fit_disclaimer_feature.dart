import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_fit_disclaimer_icons.dart';
import 'aiuta_try_on_fit_disclaimer_strings.dart';

part 'aiuta_try_on_fit_disclaimer_feature.g.dart';

@JsonSerializable()
class AiutaTryOnFitDisclaimerFeature {
  /// Icons used in the Fit Disclaimer feature.
  final AiutaTryOnFitDisclaimerIcons? icons;

  /// Strings used in the Fit Disclaimer feature.
  final AiutaTryOnFitDisclaimerStrings strings;

  AiutaTryOnFitDisclaimerFeature({
    this.icons,
    required this.strings,
  });

  /// Create a new instance of AiutaTryOnFitDisclaimerFeature from a json map.
  factory AiutaTryOnFitDisclaimerFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnFitDisclaimerFeatureToJson(this);
}
