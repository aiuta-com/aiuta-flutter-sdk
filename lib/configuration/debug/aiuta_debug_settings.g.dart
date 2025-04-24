// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_debug_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaDebugSettings _$AiutaDebugSettingsFromJson(Map<String, dynamic> json) =>
    AiutaDebugSettings(
      isLoggingEnabled: json['isLoggingEnabled'] as bool,
      emptyStringsPolicy: $enumDecode(
          _$AiutaValidationPolicyEnumMap, json['emptyStringsPolicy']),
      unavailableResourcesPolicy: $enumDecode(
          _$AiutaValidationPolicyEnumMap, json['unavailableResourcesPolicy']),
      infoPlistDescriptionsPolicy: $enumDecode(
          _$AiutaValidationPolicyEnumMap, json['infoPlistDescriptionsPolicy']),
      listSizePolicy:
          $enumDecode(_$AiutaValidationPolicyEnumMap, json['listSizePolicy']),
    );

Map<String, dynamic> _$AiutaDebugSettingsToJson(AiutaDebugSettings instance) =>
    <String, dynamic>{
      'isLoggingEnabled': instance.isLoggingEnabled,
      'emptyStringsPolicy':
          _$AiutaValidationPolicyEnumMap[instance.emptyStringsPolicy]!,
      'unavailableResourcesPolicy':
          _$AiutaValidationPolicyEnumMap[instance.unavailableResourcesPolicy]!,
      'infoPlistDescriptionsPolicy':
          _$AiutaValidationPolicyEnumMap[instance.infoPlistDescriptionsPolicy]!,
      'listSizePolicy':
          _$AiutaValidationPolicyEnumMap[instance.listSizePolicy]!,
    };

const _$AiutaValidationPolicyEnumMap = {
  AiutaValidationPolicy.ignore: 'ignore',
  AiutaValidationPolicy.warning: 'warning',
  AiutaValidationPolicy.fatal: 'fatal',
};
