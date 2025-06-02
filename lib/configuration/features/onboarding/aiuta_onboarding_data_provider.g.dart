// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_onboarding_data_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaOnboardingDataProviderBuiltIn _$AiutaOnboardingDataProviderBuiltInFromJson(
        Map<String, dynamic> json) =>
    AiutaOnboardingDataProviderBuiltIn()
      ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingDataProviderBuiltInToJson(
        AiutaOnboardingDataProviderBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaOnboardingDataProviderCustom _$AiutaOnboardingDataProviderCustomFromJson(
        Map<String, dynamic> json) =>
    AiutaOnboardingDataProviderCustom(
      isOnboardingCompleted: toNull(json['isOnboardingCompleted']),
      completeOnboarding: toNull(json['completeOnboarding']),
    )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaOnboardingDataProviderCustomToJson(
    AiutaOnboardingDataProviderCustom instance) {
  final val = <String, dynamic>{
    'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isOnboardingCompleted', toNull(instance.isOnboardingCompleted));
  writeNotNull('completeOnboarding', toNull(instance.completeOnboarding));
  return val;
}
