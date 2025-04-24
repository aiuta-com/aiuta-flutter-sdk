import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';

part 'aiuta_try_on_styles.g.dart';

@JsonSerializable()
class AiutaTryOnStyles {
  /// Gradient for the Try-On button (nullable).
  final List<String>? tryOnButtonGradient;

  AiutaTryOnStyles({
    this.tryOnButtonGradient,
  });

  /// Create a new instance of AiutaTryOnStyles from a json map.
  factory AiutaTryOnStyles.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnStylesFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnStylesToJson(this);
}
