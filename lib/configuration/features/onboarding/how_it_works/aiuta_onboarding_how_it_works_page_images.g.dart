// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_how_it_works_page_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingHowItWorksPageImages
    _$AiutaOnboardingHowItWorksPageImagesFromJson(Map<String, dynamic> json) =>
        AiutaOnboardingHowItWorksPageImages(
          onboardingHowItWorksItems: (json['onboardingHowItWorksItems']
                  as List<dynamic>)
              .map((e) =>
                  OnboardingHowItWorksItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$AiutaOnboardingHowItWorksPageImagesToJson(
        AiutaOnboardingHowItWorksPageImages instance) =>
    <String, dynamic>{
      'onboardingHowItWorksItems': instance.onboardingHowItWorksItems,
    };

OnboardingHowItWorksItem _$OnboardingHowItWorksItemFromJson(
        Map<String, dynamic> json) =>
    OnboardingHowItWorksItem(
      itemPhoto: json['itemPhoto'] as String,
      itemPreview: json['itemPreview'] as String,
    );

Map<String, dynamic> _$OnboardingHowItWorksItemToJson(
        OnboardingHowItWorksItem instance) =>
    <String, dynamic>{
      'itemPhoto': instance.itemPhoto,
      'itemPreview': instance.itemPreview,
    };
