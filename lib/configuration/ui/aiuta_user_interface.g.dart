// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_user_interface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaUserInterfaceConfiguration _$AiutaUserInterfaceConfigurationFromJson(
        Map<String, dynamic> json) =>
    AiutaUserInterfaceConfiguration(
      presentationStyle: $enumDecode(
          _$AiutaPresentationStyleEnumMap, json['presentationStyle']),
      swipeToDismiss: $enumDecode(
          _$AiutaSwipeToDismissPolicyEnumMap, json['swipeToDismiss']),
      theme: AiutaTheme.fromJson(json['theme'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaUserInterfaceConfigurationToJson(
        AiutaUserInterfaceConfiguration instance) =>
    <String, dynamic>{
      'presentationStyle':
          _$AiutaPresentationStyleEnumMap[instance.presentationStyle]!,
      'swipeToDismiss':
          _$AiutaSwipeToDismissPolicyEnumMap[instance.swipeToDismiss]!,
      'theme': instance.theme,
    };

const _$AiutaPresentationStyleEnumMap = {
  AiutaPresentationStyle.pageSheet: 'pageSheet',
  AiutaPresentationStyle.bottomSheet: 'bottomSheet',
  AiutaPresentationStyle.fullScreen: 'fullScreen',
};

const _$AiutaSwipeToDismissPolicyEnumMap = {
  AiutaSwipeToDismissPolicy.allowAlways: 'allowAlways',
  AiutaSwipeToDismissPolicy.allowHeaderSwipeOnly: 'allowHeaderSwipeOnly',
  AiutaSwipeToDismissPolicy.protectTheNecessaryPages:
      'protectTheNecessaryPages',
};
