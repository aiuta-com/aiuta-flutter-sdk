// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_label_typography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaLabelTypography _$AiutaLabelTypographyFromJson(
        Map<String, dynamic> json) =>
    AiutaLabelTypography(
      titleL: AiutaTextStyle.fromJson(json['titleL'] as Map<String, dynamic>),
      titleM: AiutaTextStyle.fromJson(json['titleM'] as Map<String, dynamic>),
      regular: AiutaTextStyle.fromJson(json['regular'] as Map<String, dynamic>),
      subtle: AiutaTextStyle.fromJson(json['subtle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AiutaLabelTypographyToJson(
        AiutaLabelTypography instance) =>
    <String, dynamic>{
      'titleL': instance.titleL,
      'titleM': instance.titleM,
      'regular': instance.regular,
      'subtle': instance.subtle,
    };
