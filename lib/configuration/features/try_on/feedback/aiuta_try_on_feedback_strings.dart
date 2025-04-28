import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_strings.g.dart';

/// Strings used in the feedback feature of the virtual try-on functionality.
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

  /// Creates an [AiutaTryOnFeedbackStrings] with the [feedbackOptions] list
  /// of predefined feedback reactions, [feedbackTitle] for the bottom sheet,
  /// [feedbackButtonSkip] for the skip button, [feedbackButtonSend] to
  /// send the feedback and [feedbackGratitudeText] to show the user
  /// after the feedback is sent.
  AiutaTryOnFeedbackStrings({
    required this.feedbackOptions,
    required this.feedbackTitle,
    required this.feedbackButtonSkip,
    required this.feedbackButtonSend,
    required this.feedbackGratitudeText,
  });

  // Internal json staff
  factory AiutaTryOnFeedbackStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackStringsToJson(this);
}
