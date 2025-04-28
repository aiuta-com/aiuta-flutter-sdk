import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_loading_page_styles.g.dart';

enum AiutaTryOnLoadingPageStyle { Primary, Blurred }

@JsonSerializable()
class AiutaTryOnLoadingPageStyles {
  /// Background gradient for the loading status (nullable).
  final List<String>? loadingStatusBackgroundGradient;

  /// Style for the loading status.
  final AiutaTryOnLoadingPageStyle loadingStatusStyle;

  AiutaTryOnLoadingPageStyles({
    this.loadingStatusBackgroundGradient,
    required this.loadingStatusStyle,
  });

  // Internal json staff
  factory AiutaTryOnLoadingPageStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnLoadingPageStylesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnLoadingPageStylesToJson(this);
}
