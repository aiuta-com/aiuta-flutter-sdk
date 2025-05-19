// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_welcome_screen_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaWelcomeScreenTypography _$AiutaWelcomeScreenTypographyFromJson(
        Map<String, dynamic> json) =>
    AiutaWelcomeScreenTypography(
      welcomeTitle:
          AiutaTextStyle.fromJson(json['welcomeTitle'] as Map<String, dynamic>),
      welcomeDescription: AiutaTextStyle.fromJson(
          json['welcomeDescription'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaWelcomeScreenTypographyToJson(
        AiutaWelcomeScreenTypography instance) =>
    <String, dynamic>{
      'welcomeTitle': instance.welcomeTitle,
      'welcomeDescription': instance.welcomeDescription,
    };
