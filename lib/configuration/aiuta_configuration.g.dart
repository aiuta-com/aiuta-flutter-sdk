// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaConfiguration _$AiutaConfigurationFromJson(Map<String, dynamic> json) =>
    AiutaConfiguration(
      auth: AiutaAuth.fromJson(json['auth'] as Map<String, dynamic>),
      userInterface: AiutaUserInterfaceConfiguration.fromJson(
          json['userInterface'] as Map<String, dynamic>),
      features:
          AiutaFeatures.fromJson(json['features'] as Map<String, dynamic>),
      analytics: json['analytics'] == null
          ? null
          : AiutaAnalytics.fromJson(json['analytics'] as Map<String, dynamic>),
      debugSettings: AiutaDebugSettings.fromJson(
          json['debugSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaConfigurationToJson(AiutaConfiguration instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'userInterface': instance.userInterface,
      'features': instance.features,
      'analytics': instance.analytics,
      'debugSettings': instance.debugSettings,
    };
