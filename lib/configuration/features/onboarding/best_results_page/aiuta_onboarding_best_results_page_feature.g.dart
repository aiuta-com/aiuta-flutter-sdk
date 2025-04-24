// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_best_results_page_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingBestResultsPageFeature
    _$AiutaOnboardingBestResultsPageFeatureFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageFeature(
          images: AiutaOnboardingBestResultsPageImages.fromJson(
              json['images'] as Map<String, dynamic>),
          icons: AiutaOnboardingBestResultsPageIcons.fromJson(
              json['icons'] as Map<String, dynamic>),
          strings: AiutaOnboardingBestResultsPageStrings.fromJson(
              json['strings'] as Map<String, dynamic>),
          toggles: AiutaOnboardingBestResultsPageToggles.fromJson(
              json['toggles'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$AiutaOnboardingBestResultsPageFeatureToJson(
        AiutaOnboardingBestResultsPageFeature instance) =>
    <String, dynamic>{
      'images': instance.images,
      'icons': instance.icons,
      'strings': instance.strings,
      'toggles': instance.toggles,
    };
