// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_try_on_loading_page_styles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaTryOnLoadingPageStyles _$AiutaTryOnLoadingPageStylesFromJson(
        Map<String, dynamic> json) =>
    AiutaTryOnLoadingPageStyles(
      loadingStatusBackgroundGradient:
          (json['loadingStatusBackgroundGradient'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      loadingStatusStyle:
          $enumDecode(_$AiutaComponentStyleEnumMap, json['loadingStatusStyle']),
    );

Map<String, dynamic> _$AiutaTryOnLoadingPageStylesToJson(
        AiutaTryOnLoadingPageStyles instance) =>
    <String, dynamic>{
      'loadingStatusBackgroundGradient':
          instance.loadingStatusBackgroundGradient,
      'loadingStatusStyle':
          _$AiutaComponentStyleEnumMap[instance.loadingStatusStyle]!,
    };

const _$AiutaComponentStyleEnumMap = {
  AiutaComponentStyle.brand: 'brand',
  AiutaComponentStyle.contrast: 'contrast',
  AiutaComponentStyle.contrastInverted: 'contrastInverted',
  AiutaComponentStyle.blurred: 'blurred',
  AiutaComponentStyle.blurredWithOutline: 'blurredWithOutline',
};
