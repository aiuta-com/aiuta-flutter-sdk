import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_icons.g.dart';

/// Icons used in the feedback feature of the virtual try-on functionality.
@JsonSerializable()
class AiutaTryOnFeedbackIcons {
  /// Icon for the "like" feedback.
  final AiutaIcon like36;

  /// Icon for the "dislike" feedback.
  final AiutaIcon dislike36;

  /// Icon for the gratitude feedback.
  final AiutaIcon gratitude40;

  /// Creates an [AiutaTryOnFeedbackIcons] with the [like36], [dislike36] icons
  /// for feedback button over the try-on result and [gratitude40] for the gratitude
  /// message to the user after providing feedback.
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
