import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_typography.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_fit_disclaimer_feature.g.dart';

/// The Fit Disclaimer feature (optional) to indicate that the result
/// of the try-on may differ from real life.
@JsonSerializable()
class AiutaTryOnFitDisclaimerFeature {
  /// Icons used in the Fit Disclaimer feature.
  final AiutaTryOnFitDisclaimerIcons icons;

  /// Strings used in the Fit Disclaimer feature.
  final AiutaTryOnFitDisclaimerStrings strings;

  /// Typography used in the Fit Disclaimer feature.
  final AiutaTryOnFitDisclaimerTypography typography;

  /// Creates an [AiutaTryOnFitDisclaimerFeature] with the required [strings]
  /// and [icons] to configure the feature.
  AiutaTryOnFitDisclaimerFeature({
    required this.icons,
    required this.strings,
    required this.typography,
  });

  // Internal json staff
  factory AiutaTryOnFitDisclaimerFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFitDisclaimerFeatureToJson(this);
}
