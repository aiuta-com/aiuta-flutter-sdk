import 'package:json_annotation/json_annotation.dart';

part 'aiuta_activity_indicator_colors.g.dart';

@JsonSerializable()
class AiutaActivityIndicatorColors {
  /// Background color for the overlay.
  final String overlay;

  /// Creates an [AiutaActivityIndicatorColors] with [overlay]
  AiutaActivityIndicatorColors({
    required this.overlay,
  });

  /// Creates a built-in activity indicator colors configuration with default settings.
  factory AiutaActivityIndicatorColors.builtIn() {
    return AiutaActivityIndicatorColors(
      overlay: "#00000000",
    );
  }

  // Internal json staff
  factory AiutaActivityIndicatorColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaActivityIndicatorColorsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaActivityIndicatorColorsToJson(this);
}
