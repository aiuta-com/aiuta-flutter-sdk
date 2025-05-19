// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_best_results_page_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingBestResultsPageImages
    _$AiutaOnboardingBestResultsPageImagesFromJson(Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageImages(
          onboardingBestResultsGood:
              (json['onboardingBestResultsGood'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          onboardingBestResultsBad:
              (json['onboardingBestResultsBad'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
        );

Map<String, dynamic> _$AiutaOnboardingBestResultsPageImagesToJson(
        AiutaOnboardingBestResultsPageImages instance) =>
    <String, dynamic>{
      'onboardingBestResultsGood': instance.onboardingBestResultsGood,
      'onboardingBestResultsBad': instance.onboardingBestResultsBad,
    };
