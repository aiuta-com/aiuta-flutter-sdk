// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_best_results_page_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingBestResultsPageImagesBuiltIn
    _$AiutaOnboardingBestResultsPageImagesBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageImagesBuiltIn();

Map<String, dynamic> _$AiutaOnboardingBestResultsPageImagesBuiltInToJson(
        AiutaOnboardingBestResultsPageImagesBuiltIn instance) =>
    <String, dynamic>{};

AiutaOnboardingBestResultsPageImagesCustom
    _$AiutaOnboardingBestResultsPageImagesCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaOnboardingBestResultsPageImagesCustom(
          onboardingBestResultsGood:
              (json['onboardingBestResultsGood'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          onboardingBestResultsBad:
              (json['onboardingBestResultsBad'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
        );

Map<String, dynamic> _$AiutaOnboardingBestResultsPageImagesCustomToJson(
        AiutaOnboardingBestResultsPageImagesCustom instance) =>
    <String, dynamic>{
      'onboardingBestResultsGood': instance.onboardingBestResultsGood,
      'onboardingBestResultsBad': instance.onboardingBestResultsBad,
    };
