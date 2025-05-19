import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_onboarding_best_results_page_icons.g.dart';

@JsonSerializable()
class AiutaOnboardingBestResultsPageIcons {
  /// Icon for good results.
  final AiutaIcon onboardingBestResultsGood24;

  /// Icon for bad results.
  final AiutaIcon onboardingBestResultsBad24;

  AiutaOnboardingBestResultsPageIcons({
    required this.onboardingBestResultsGood24,
    required this.onboardingBestResultsBad24,
  });

  /// Create a new instance of AiutaOnboardingBestResultsPageIcons from a json map.
  factory AiutaOnboardingBestResultsPageIcons.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaOnboardingBestResultsPageIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaOnboardingBestResultsPageIconsToJson(this);
}
