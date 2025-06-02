import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent_mode.dart';
import 'package:aiuta_flutter/configuration/features/consent/embedded/aiuta_consent_embedded_strings.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_data.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_icons.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_strings.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_styles.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_consent_feature.g.dart';

/// Base class for Aiuta consent feature.
sealed class AiutaConsentFeature {
  /// The mode of the consent feature to be embedded into the onboarding with
  /// [embeddedIntoOnboarding] or displayed as a standalone page
  /// with [standaloneOnboardingPage] or [standaloneImagePickerPage].
  AiutaConsentMode mode;

  /// Base constructor for AiutaConsentFeature with [mode].
  AiutaConsentFeature(this.mode);

  factory AiutaConsentFeature.builtIn({
    required String termsOfServiceUrl,
  }) {
    return AiutaConsentEmbeddedIntoOnboardingFeature(
      strings: AiutaConsentEmbeddedStringsBuiltIn(
        termsOfServiceUrl: termsOfServiceUrl,
      ),
    );
  }

  // Internal json staff
  factory AiutaConsentFeature.fromJson(Map<String, dynamic> json) {
    switch (json['mode'] as String) {
      case 'embeddedIntoOnboarding':
        return AiutaConsentEmbeddedIntoOnboardingFeature.fromJson(json);
      case 'standaloneOnboardingPage':
        return AiutaConsentStandaloneOnboardingPageFeature.fromJson(json);
      case 'standaloneImagePickerPage':
        return AiutaConsentStandaloneImagePickerPageFeature.fromJson(json);
      default:
        throw Exception('Unknown consent feature type');
    }
  }

  Map<String, dynamic> toJson();
}

/// Consent information will be embedded into the onboarding pages in the bottom of the screen.
/// The user is not required to explicitly accept the terms and conditions in order to proceed.
@JsonSerializable()
class AiutaConsentEmbeddedIntoOnboardingFeature extends AiutaConsentFeature {
  /// Strings used in the consent feature.
  final AiutaConsentEmbeddedStrings strings;

  /// Creates an [AiutaConsentEmbeddedIntoOnboardingFeature]
  /// with the [strings] provided.
  AiutaConsentEmbeddedIntoOnboardingFeature({
    required this.strings,
  }) : super(AiutaConsentMode.embeddedIntoOnboarding);

  // Internal json staff
  factory AiutaConsentEmbeddedIntoOnboardingFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentEmbeddedIntoOnboardingFeatureFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentEmbeddedIntoOnboardingFeatureToJson(this);
}

/// Consent information will be displayed in a standalone page after the onboarding
/// (as the last page of the onboarding if it is enabled, or as a separate page otherwise).
/// The user needs to accept the terms by setting required checkboxes to continue.
@JsonSerializable()
class AiutaConsentStandaloneOnboardingPageFeature extends AiutaConsentFeature {
  /// Strings used in the consent feature.
  final AiutaConsentStandaloneStrings strings;

  /// Icons used in the consent feature.
  final AiutaConsentStandaloneIcons icons;

  /// Styles used in the consent feature.
  final AiutaConsentStandaloneStyles styles;

  /// Data used in the consent feature.
  /// Contains the list of consents with their properties.
  final AiutaConsentStandaloneData data;

  /// Data provider for the consent feature.
  /// Used to control the obtaining of the consent and provide the list
  /// of consents that already have been accepted by the user.
  final AiutaConsentStandaloneDataProvider dataProvider;

  /// Creates an [AiutaConsentStandaloneOnboardingPageFeature] with the
  /// [strings], [icons], [styles], list of consents in [data],
  /// and [dataProvider] to control the consent feature.
  AiutaConsentStandaloneOnboardingPageFeature({
    required this.strings,
    required this.icons,
    required this.styles,
    required this.data,
    required this.dataProvider,
  }) : super(AiutaConsentMode.standaloneOnboardingPage);

  // Internal json staff
  factory AiutaConsentStandaloneOnboardingPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneOnboardingPageFeatureFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneOnboardingPageFeatureToJson(this);
}

/// Consent information will be displayed in a bottom sheet
/// when the user tries to upload a photo in the image picker.
/// The user needs to accept the terms by setting required checkboxes to continue.
@JsonSerializable()
class AiutaConsentStandaloneImagePickerPageFeature extends AiutaConsentFeature {
  /// Strings used in the consent feature.
  final AiutaConsentStandaloneStrings strings;

  /// Icons used in the consent feature.
  final AiutaConsentStandaloneIcons icons;

  /// Styles used in the consent feature.
  final AiutaConsentStandaloneStyles styles;

  /// Data used in the consent feature.
  /// Contains the list of consents with their properties.
  final AiutaConsentStandaloneData data;

  /// Data provider for the consent feature.
  /// Used to control the obtaining of the consent and provide the list
  /// of consents that already have been accepted by the user.
  final AiutaConsentStandaloneDataProvider dataProvider;

  /// Creates an [AiutaConsentStandaloneImagePickerPageFeature] with the
  /// [strings], [icons], [styles], list of consents in [data],
  /// and [dataProvider] to control the consent feature.
  AiutaConsentStandaloneImagePickerPageFeature({
    required this.strings,
    required this.icons,
    required this.styles,
    required this.data,
    required this.dataProvider,
  }) : super(AiutaConsentMode.standaloneImagePickerPage);

  // Internal json staff
  factory AiutaConsentStandaloneImagePickerPageFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaConsentStandaloneImagePickerPageFeatureFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaConsentStandaloneImagePickerPageFeatureToJson(this);
}
