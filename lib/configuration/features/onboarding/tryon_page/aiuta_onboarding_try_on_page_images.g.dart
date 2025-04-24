// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_try_on_page_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingTryOnPageImages _$AiutaOnboardingTryOnPageImagesFromJson(
        Map<String, dynamic> json) =>
    AiutaOnboardingTryOnPageImages(
      onboardingTryOnItems: (json['onboardingTryOnItems'] as List<dynamic>)
          .map((e) => OnboardingTryOnItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AiutaOnboardingTryOnPageImagesToJson(
        AiutaOnboardingTryOnPageImages instance) =>
    <String, dynamic>{
      'onboardingTryOnItems': instance.onboardingTryOnItems,
    };

OnboardingTryOnItem _$OnboardingTryOnItemFromJson(Map<String, dynamic> json) =>
    OnboardingTryOnItem(
      itemPhoto: json['itemPhoto'] as String,
      itemPreview: json['itemPreview'] as String,
    );

Map<String, dynamic> _$OnboardingTryOnItemToJson(
        OnboardingTryOnItem instance) =>
    <String, dynamic>{
      'itemPhoto': instance.itemPhoto,
      'itemPreview': instance.itemPreview,
    };
