// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_shoes_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaShoesMode _$AiutaShoesModeFromJson(Map<String, dynamic> json) =>
    AiutaShoesMode(
      onboardingShoesPage: AiutaShoesModeOnboardingPage.fromJson(
          json['onboardingShoesPage'] as Map<String, dynamic>),
      imagePicker: AiutaShoesModeImagePicker.fromJson(
          json['imagePicker'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaShoesModeToJson(AiutaShoesMode instance) =>
    <String, dynamic>{
      'onboardingShoesPage': instance.onboardingShoesPage,
      'imagePicker': instance.imagePicker,
    };
