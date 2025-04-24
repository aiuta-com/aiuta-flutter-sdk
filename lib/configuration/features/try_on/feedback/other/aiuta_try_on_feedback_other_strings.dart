import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_other_strings.g.dart';

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

  AiutaTryOnFeedbackOtherStrings({
    required this.otherFeedbackTitle,
    required this.otherFeedbackButtonSend,
    required this.otherFeedbackButtonCancel,
    required this.otherFeedbackOptionOther,
  });

  /// Create a new instance of AiutaTryOnFeedbackOtherStrings from a json map.
  factory AiutaTryOnFeedbackOtherStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackOtherStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackOtherStringsToJson(this);
}
