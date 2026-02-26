// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_protection_disclaimer_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerProtectionDisclaimerStringsBuiltIn
    _$AiutaImagePickerProtectionDisclaimerStringsBuiltInFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerProtectionDisclaimerStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerProtectionDisclaimerStringsBuiltInToJson(
        AiutaImagePickerProtectionDisclaimerStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaImagePickerProtectionDisclaimerStringsCustom
    _$AiutaImagePickerProtectionDisclaimerStringsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerProtectionDisclaimerStringsCustom(
          protectionDisclaimer: json['protectionDisclaimer'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerProtectionDisclaimerStringsCustomToJson(
        AiutaImagePickerProtectionDisclaimerStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'protectionDisclaimer': instance.protectionDisclaimer,
    };
