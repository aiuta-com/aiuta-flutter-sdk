import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_styles.g.dart';

/// Styles for the loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageStyles {
  /// Background gradient for the loading status (optional).
  /// If not provided, a default gradient will be used.
  final List<String>? loadingStatusBackgroundGradient;

  /// Creates an [AiutaTryOnLoadingPageStyles] with the optional
  /// [loadingStatusBackgroundGradient] to configure the loading page styles.
  AiutaTryOnLoadingPageStyles({
    this.loadingStatusBackgroundGradient,
  });

  /// Creates a built-in loading page styles configuration with default settings.
  factory AiutaTryOnLoadingPageStyles.builtIn() {
    return AiutaTryOnLoadingPageStyles();
  }

  // Internal json staff
  factory AiutaTryOnLoadingPageStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageStylesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageStylesToJson(this);
}
