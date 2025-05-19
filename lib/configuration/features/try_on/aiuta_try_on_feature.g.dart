// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_feature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnFeature _$AiutaTryOnFeatureFromJson(Map<String, dynamic> json) =>
    AiutaTryOnFeature(
      loadingPage: AiutaTryOnLoadingPageFeature.fromJson(
          json['loadingPage'] as Map<String, dynamic>),
      inputImageValidation: AiutaTryOnInputImageValidationFeature.fromJson(
          json['inputImageValidation'] as Map<String, dynamic>),
      cart:
          AiutaTryOnCartFeature.fromJson(json['cart'] as Map<String, dynamic>),
      fitDisclaimer: json['fitDisclaimer'] == null
          ? null
          : AiutaTryOnFitDisclaimerFeature.fromJson(
              json['fitDisclaimer'] as Map<String, dynamic>),
      feedback: json['feedback'] == null
          ? null
          : AiutaTryOnFeedbackFeature.fromJson(
              json['feedback'] as Map<String, dynamic>),
      generationsHistory: json['generationsHistory'] == null
          ? null
          : AiutaTryOnGenerationsHistoryFeature.fromJson(
              json['generationsHistory'] as Map<String, dynamic>),
      otherPhoto: json['otherPhoto'] == null
          ? null
          : AiutaTryOnWithOtherPhotoFeature.fromJson(
              json['otherPhoto'] as Map<String, dynamic>),
      toggles:
          AiutaTryOnToggles.fromJson(json['toggles'] as Map<String, dynamic>),
      icons: AiutaTryOnIcons.fromJson(json['icons'] as Map<String, dynamic>),
      strings:
          AiutaTryOnStrings.fromJson(json['strings'] as Map<String, dynamic>),
      styles: AiutaTryOnStyles.fromJson(json['styles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaTryOnFeatureToJson(AiutaTryOnFeature instance) =>
    <String, dynamic>{
      'loadingPage': instance.loadingPage,
      'inputImageValidation': instance.inputImageValidation,
      'cart': instance.cart,
      'fitDisclaimer': instance.fitDisclaimer,
      'feedback': instance.feedback,
      'generationsHistory': instance.generationsHistory,
      'otherPhoto': instance.otherPhoto,
      'toggles': instance.toggles,
      'icons': instance.icons,
      'strings': instance.strings,
      'styles': instance.styles,
    };
