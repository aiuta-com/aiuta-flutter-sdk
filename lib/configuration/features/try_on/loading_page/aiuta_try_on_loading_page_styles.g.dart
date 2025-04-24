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
      loadingStatusStyle: $enumDecode(
          _$AiutaTryOnLoadingPageStyleEnumMap, json['loadingStatusStyle']),
    );

Map<String, dynamic> _$AiutaTryOnLoadingPageStylesToJson(
        AiutaTryOnLoadingPageStyles instance) =>
    <String, dynamic>{
      'loadingStatusBackgroundGradient':
          instance.loadingStatusBackgroundGradient,
      'loadingStatusStyle':
          _$AiutaTryOnLoadingPageStyleEnumMap[instance.loadingStatusStyle]!,
    };

const _$AiutaTryOnLoadingPageStyleEnumMap = {
  AiutaTryOnLoadingPageStyle.Primary: 'Primary',
  AiutaTryOnLoadingPageStyle.Blurred: 'Blurred',
};
