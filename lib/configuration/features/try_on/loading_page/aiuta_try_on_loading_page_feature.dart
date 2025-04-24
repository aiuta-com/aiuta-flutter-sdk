import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_loading_page_icons.dart';
import 'aiuta_try_on_loading_page_strings.dart';
import 'aiuta_try_on_loading_page_styles.dart';

part 'aiuta_try_on_loading_page_feature.g.dart';

@JsonSerializable()
class AiutaTryOnLoadingPageFeature {
  /// Icons used in the loading page feature.
  final AiutaTryOnLoadingPageIcons icons;

  /// Strings used in the loading page feature.
  final AiutaTryOnLoadingPageStrings strings;

  /// Styles used in the loading page feature.
  final AiutaTryOnLoadingPageStyles styles;

  AiutaTryOnLoadingPageFeature({
    required this.icons,
    required this.strings,
    required this.styles,
  });

  /// Create a new instance of AiutaTryOnLoadingPageFeature from a json map.
  factory AiutaTryOnLoadingPageFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageFeatureToJson(this);
}
