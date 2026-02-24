// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_image_picker_protection_disclaimer_icons.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaImagePickerProtectionDisclaimerIconsCustom
    _$AiutaImagePickerProtectionDisclaimerIconsCustomFromJson(
            Map<String, dynamic> json) =>
        AiutaImagePickerProtectionDisclaimerIconsCustom(
          protection16:
              AiutaIcon.fromJson(json['protection16'] as Map<String, dynamic>),
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaImagePickerProtectionDisclaimerIconsCustomToJson(
        AiutaImagePickerProtectionDisclaimerIconsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'protection16': instance.protection16,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};
