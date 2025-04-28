// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTheme _$AiutaThemeFromJson(Map<String, dynamic> json) => AiutaTheme(
      color: AiutaColorTheme.fromJson(json['color'] as Map<String, dynamic>),
      fonts: (json['fonts'] as List<dynamic>)
          .map((e) => AiutaFont.fromJson(e as Map<String, dynamic>))
          .toList(),
      label: AiutaLabelTheme.fromJson(json['label'] as Map<String, dynamic>),
      image: AiutaImageTheme.fromJson(json['image'] as Map<String, dynamic>),
      button: AiutaButtonTheme.fromJson(json['button'] as Map<String, dynamic>),
      pageBar:
          AiutaPageBarTheme.fromJson(json['pageBar'] as Map<String, dynamic>),
      bottomSheet: AiutaBottomSheetTheme.fromJson(
          json['bottomSheet'] as Map<String, dynamic>),
      selectionSnackbar: AiutaSelectionSnackbarTheme.fromJson(
          json['selectionSnackbar'] as Map<String, dynamic>),
      productBar: AiutaProductBarTheme.fromJson(
          json['productBar'] as Map<String, dynamic>),
      powerBar:
          AiutaPowerBarTheme.fromJson(json['powerBar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaThemeToJson(AiutaTheme instance) =>
    <String, dynamic>{
      'color': instance.color,
      'fonts': instance.fonts,
      'label': instance.label,
      'image': instance.image,
      'button': instance.button,
      'pageBar': instance.pageBar,
      'bottomSheet': instance.bottomSheet,
      'selectionSnackbar': instance.selectionSnackbar,
      'productBar': instance.productBar,
      'powerBar': instance.powerBar,
    };
