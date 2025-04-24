// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_features.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaFeatures _$AiutaFeaturesFromJson(Map<String, dynamic> json) =>
    AiutaFeatures(
      welcomeScreen: json['welcomeScreen'] == null
          ? null
          : AiutaWelcomeScreenFeature.fromJson(
              json['welcomeScreen'] as Map<String, dynamic>),
      onboarding: json['onboarding'] == null
          ? null
          : AiutaOnboardingFeature.fromJson(
              json['onboarding'] as Map<String, dynamic>),
      consent: json['consent'] == null
          ? null
          : AiutaConsentFeature.fromJson(
              json['consent'] as Map<String, dynamic>),
      imagePicker: AiutaImagePickerFeature.fromJson(
          json['imagePicker'] as Map<String, dynamic>),
      tryOn: AiutaTryOnFeature.fromJson(json['tryOn'] as Map<String, dynamic>),
      poweredBy: AiutaPoweredByFeature.fromJson(
          json['poweredBy'] as Map<String, dynamic>),
      share: json['share'] == null
          ? null
          : AiutaShareFeature.fromJson(json['share'] as Map<String, dynamic>),
      wishlist: json['wishlist'] == null
          ? null
          : AiutaWishlistFeature.fromJson(
              json['wishlist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaFeaturesToJson(AiutaFeatures instance) =>
    <String, dynamic>{
      'welcomeScreen': instance.welcomeScreen,
      'onboarding': instance.onboarding,
      'consent': instance.consent,
      'imagePicker': instance.imagePicker,
      'tryOn': instance.tryOn,
      'poweredBy': instance.poweredBy,
      'share': instance.share,
      'wishlist': instance.wishlist,
    };
