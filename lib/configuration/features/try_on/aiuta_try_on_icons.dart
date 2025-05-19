import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_icons.g.dart';

/// Icons for the Try-On feature.
@JsonSerializable()
class AiutaTryOnIcons {
  /// Icon for the Try-On feature.
  final AiutaIcon tryOn20;

  /// Creates an [AiutaTryOnIcons] with the required [tryOn20] icon for the
  /// "Try-On" buttons.
  AiutaTryOnIcons({
    required this.tryOn20,
  });

  // Internal json staff
  factory AiutaTryOnIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnIconsToJson(this);
}
