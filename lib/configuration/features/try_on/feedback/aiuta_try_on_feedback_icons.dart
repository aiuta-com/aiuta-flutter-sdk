import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_icons.g.dart';

@JsonSerializable()
class AiutaTryOnFeedbackIcons {
  /// Icon for the "like" feedback.
  final AiutaIcon like36;

  /// Icon for the "dislike" feedback.
  final AiutaIcon dislike36;

  /// Icon for the gratitude feedback.
  final AiutaIcon gratitude40;

  AiutaTryOnFeedbackIcons({
    required this.like36,
    required this.dislike36,
    required this.gratitude40,
  });

  // Internal json staff
  factory AiutaTryOnFeedbackIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackIconsToJson(this);
}

