import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_styles.g.dart';

@JsonSerializable()
class AiutaTryOnStyles {
  /// Gradient for the Try-On button (nullable).
  final List<String>? tryOnButtonGradient;

  AiutaTryOnStyles({
    this.tryOnButtonGradient,
  });

  // Internal json staff
  factory AiutaTryOnStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnStylesFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnStylesToJson(this);
}
