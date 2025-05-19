import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_other_strings.g.dart';

/// Strings used in the other feedback feature.
@JsonSerializable()
class AiutaTryOnFeedbackOtherStrings {
  /// Title for the other feedback section.
  final String otherFeedbackTitle;

  /// Text for the "Send" button in the other feedback section.
  final String otherFeedbackButtonSend;

  /// Text for the "Cancel" button in the other feedback section.
  final String otherFeedbackButtonCancel;

  /// Text for the "Other" feedback option.
  final String otherFeedbackOptionOther;

  /// Creates an [AiutaTryOnFeedbackOtherStrings] with the [otherFeedbackTitle],
  /// [otherFeedbackButtonSend], [otherFeedbackButtonCancel] strings for the
  /// components of the other feedback feature, and [otherFeedbackOptionOther]
  /// to be added to the [AiutaTryOnFeedbackFeature.feedbackOptions] as an
  /// additional option to enter custom feedback.
  AiutaTryOnFeedbackOtherStrings({
    required this.otherFeedbackTitle,
    required this.otherFeedbackButtonSend,
    required this.otherFeedbackButtonCancel,
    required this.otherFeedbackOptionOther,
  });

  // Internal json staff
  factory AiutaTryOnFeedbackOtherStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackOtherStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackOtherStringsToJson(this);
}
