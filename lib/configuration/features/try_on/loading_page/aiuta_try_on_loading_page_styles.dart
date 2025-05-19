import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_styles.g.dart';

/// Enum representing the style of the loading page status view.
enum AiutaTryOnLoadingPageStyle {
  /// Loading status style with a primary color background
  /// and onDark color text.
  primary,

  /// Loading status style with a blur effect and a primary color text.
  blurred,

  /// Loading status style with a blur effect and a primary color text and
  /// an outline (border) around the component.
  blurredWithOutline,
}

/// Styles for the loading page feature.
@JsonSerializable()
class AiutaTryOnLoadingPageStyles {
  /// Background gradient for the loading status (optional).
  /// If not provided, a default gradient will be used with the `brand` color
  /// with an opacity from 100% to 0%.
  final List<String>? loadingStatusBackgroundGradient;

  /// Style for the loading status.
  final AiutaTryOnLoadingPageStyle loadingStatusStyle;

  /// Creates an [AiutaTryOnLoadingPageStyles] with the optional
  /// [loadingStatusBackgroundGradient] and required
  /// [loadingStatusStyle] to configure the loading page styles.
  AiutaTryOnLoadingPageStyles({
    this.loadingStatusBackgroundGradient,
    required this.loadingStatusStyle,
  });

  // Internal json staff
  factory AiutaTryOnLoadingPageStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageStylesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageStylesToJson(this);
}
