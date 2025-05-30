// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_selection_snackbar_strings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaSelectionSnackbarStringsBuiltIn
    _$AiutaSelectionSnackbarStringsBuiltInFromJson(Map<String, dynamic> json) =>
        AiutaSelectionSnackbarStringsBuiltIn()
          ..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaSelectionSnackbarStringsBuiltInToJson(
        AiutaSelectionSnackbarStringsBuiltIn instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
    };

const _$AiutaCustomizationTypeEnumMap = {
  AiutaCustomizationType.builtIn: 'builtIn',
  AiutaCustomizationType.custom: 'custom',
};

AiutaSelectionSnackbarStringsCustom
    _$AiutaSelectionSnackbarStringsCustomFromJson(Map<String, dynamic> json) =>
        AiutaSelectionSnackbarStringsCustom(
          select: json['select'] as String,
          cancel: json['cancel'] as String,
          selectAll: json['selectAll'] as String,
          unselectAll: json['unselectAll'] as String,
        )..type = $enumDecode(_$AiutaCustomizationTypeEnumMap, json['type']);

Map<String, dynamic> _$AiutaSelectionSnackbarStringsCustomToJson(
        AiutaSelectionSnackbarStringsCustom instance) =>
    <String, dynamic>{
      'type': _$AiutaCustomizationTypeEnumMap[instance.type]!,
      'select': instance.select,
      'cancel': instance.cancel,
      'selectAll': instance.selectAll,
      'unselectAll': instance.unselectAll,
    };
