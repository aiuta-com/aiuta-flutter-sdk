import 'package:aiuta_flutter/configuration/features/base/aiuta_component_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_styles.g.dart';

/// Styles for the loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageStyles {
  /// Background gradient for the loading status (optional).
  /// If not provided, a default gradient will be used with the `brand` color
  /// with an opacity from 100% to 0%.
  final List<String>? loadingStatusBackgroundGradient;

  /// Style for the loading status.
  final AiutaComponentStyle loadingStatusStyle;

  /// Creates an [AiutaTryOnLoadingPageStyles] with the optional
  /// [loadingStatusBackgroundGradient] and required
  /// [loadingStatusStyle] to configure the loading page styles.
  AiutaTryOnLoadingPageStyles({
    this.loadingStatusBackgroundGradient,
    required this.loadingStatusStyle,
  });

  /// Creates a built-in loading page styles configuration with default settings.
  factory AiutaTryOnLoadingPageStyles.builtIn() {
    return AiutaTryOnLoadingPageStyles(
      loadingStatusStyle: AiutaComponentStyle.blurred,
    );
  }

  // Internal json staff
  factory AiutaTryOnLoadingPageStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageStylesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageStylesToJson(this);
}
