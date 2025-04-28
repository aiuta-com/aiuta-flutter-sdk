import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_strings.dart';
import 'package:json_annotation/json_annotation.dart';

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

  // Internal json staff
  factory AiutaTryOnFitDisclaimerFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFitDisclaimerFeatureToJson(this);
}
