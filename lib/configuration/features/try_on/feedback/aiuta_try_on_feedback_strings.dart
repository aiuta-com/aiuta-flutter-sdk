import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_strings.g.dart';

@JsonSerializable()
class AiutaTryOnFeedbackStrings {
  /// List of feedback options.
  final List<String> feedbackOptions;

  /// Title for the feedback section.
  final String feedbackTitle;

  /// Text for the "Skip" button.
  final String feedbackButtonSkip;

  /// Text for the "Send" button.
  final String feedbackButtonSend;

  /// Gratitude text after feedback submission.
  final String feedbackGratitudeText;

  AiutaTryOnFeedbackStrings({
    required this.feedbackOptions,
    required this.feedbackTitle,
    required this.feedbackButtonSkip,
    required this.feedbackButtonSend,
    required this.feedbackGratitudeText,
  });

  /// Create a new instance of AiutaTryOnFeedbackStrings from a json map.
  factory AiutaTryOnFeedbackStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackStringsToJson(this);
}

