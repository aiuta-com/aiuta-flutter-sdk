import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

import 'aiuta_consent_mode.dart';
import 'built_in_with_onboarding/aiuta_consent_built_in_with_onboarding_page_strings.dart';
import 'standalone_page/aiuta_consent_standalone_onboarding_page_data.dart';
import 'standalone_page/aiuta_consent_standalone_onboarding_page_data_provider.dart';
import 'standalone_page/aiuta_consent_standalone_onboarding_page_strings.dart';

part 'aiuta_consent_feature.g.dart';

/// Base class for Aiuta consent feature.
/// This class is used to define the consent feature configuration.
sealed class AiutaConsentFeature {
  /// Authentication mode is used to determine the type of authentication.
  final AiutaConsentMode mode;

  /// Base constructor for AiutaConsentFeature.
  AiutaConsentFeature(this.mode);

  /// Factory method to create AiutaConsentFeature from json.
  factory AiutaConsentFeature.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtInWithOnboardingPage':
        return AiutaConsentBuiltInWithOnboardingPageFeature.fromJson(json);
      case 'standaloneOnboardingPage':
        return AiutaConsentStandaloneOnboardingPageFeature.fromJson(json);
      default:
        throw Exception('Unknown consent feature type');
    }
  }

  /// Method to convert AiutaConsentFeature to json.
  Map<String, dynamic> toJson();
}

/// Subclass for built-in consent with onboarding page.
@JsonSerializable()
class AiutaConsentBuiltInWithOnboardingPageFeature extends AiutaConsentFeature {
  /// Strings used in the consent feature.
  final AiutaConsentBuiltInWithOnboardingPageStrings strings;

  AiutaConsentBuiltInWithOnboardingPageFeature({
    required this.strings,
  }) : super(AiutaConsentMode.builtInWithOnboardingPage);

  /// Factory method to create AiutaConsentBuiltInWithOnboardingPageFeature from json.
  factory AiutaConsentBuiltInWithOnboardingPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentBuiltInWithOnboardingPageFeatureFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentBuiltInWithOnboardingPageFeatureToJson(this);
}

/// Subclass for standalone consent onboarding page.
@JsonSerializable()
class AiutaConsentStandaloneOnboardingPageFeature extends AiutaConsentFeature {
  /// Strings used in the consent feature.
  final AiutaConsentStandaloneOnboardingPageStrings strings;

  /// Data used in the consent feature.
  final AiutaConsentStandaloneOnboardingPageData data;

  /// Data provider for the consent feature.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaConsentStandaloneOnboardingPageDataProvider dataProvider;

  AiutaConsentStandaloneOnboardingPageFeature({
    required this.strings,
    required this.data,
    required this.dataProvider,
  }) : super(AiutaConsentMode.standaloneOnboardingPage);

  /// Factory method to create AiutaConsentStandaloneOnboardingPageFeature from json.
  factory AiutaConsentStandaloneOnboardingPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneOnboardingPageFeatureFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneOnboardingPageFeatureToJson(this);
}
