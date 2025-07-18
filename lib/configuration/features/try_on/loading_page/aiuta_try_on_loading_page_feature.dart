import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_styles.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_feature.g.dart';

/// The loading page feature with animated loading screen to
/// indicate that the try-on is being generated.
@JsonSerializable()
class AiutaTryOnLoadingPageFeature {
  /// Strings used in the loading page feature.
  final AiutaTryOnLoadingPageStrings strings;

  /// Styles used in the loading page feature.
  final AiutaTryOnLoadingPageStyles styles;

  /// Creates an [AiutaTryOnLoadingPageFeature] with the required [icons],
  /// [strings], and [styles] to configure the loading page feature.
  AiutaTryOnLoadingPageFeature({
    required this.strings,
    required this.styles,
  });

  /// Creates a built-in loading page feature configuration with default settings.
  factory AiutaTryOnLoadingPageFeature.builtIn() {
    return AiutaTryOnLoadingPageFeature(
      strings: AiutaTryOnLoadingPageStringsBuiltIn(),
      styles: AiutaTryOnLoadingPageStyles.builtIn(),
    );
  }

  // Internal json staff
  factory AiutaTryOnLoadingPageFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageFeatureToJson(this);
}
