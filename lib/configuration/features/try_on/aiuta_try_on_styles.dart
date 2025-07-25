import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_styles.g.dart';

/// Additional styles for the Try-On feature.
@JsonSerializable()
class AiutaTryOnStyles {
  /// Gradient for the Try-On button (optional).
  ///
  /// This property allows you to specify a gradient for the Try-On button.
  /// If not provided, the `brand` color will be used for the button.
  final List<String>? tryOnButtonGradient;

  /// Creates an [AiutaTryOnStyles] with the optional [tryOnButtonGradient]
  /// to color Try-On buttons with the specified gradient.
  AiutaTryOnStyles({
    this.tryOnButtonGradient,
  });

  /// Creates a built-in try-on styles configuration with default settings.
  factory AiutaTryOnStyles.builtIn() {
    return AiutaTryOnStyles(
      tryOnButtonGradient: null,
    );
  }

  // Internal json staff
  factory AiutaTryOnStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnStylesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnStylesToJson(this);
}
