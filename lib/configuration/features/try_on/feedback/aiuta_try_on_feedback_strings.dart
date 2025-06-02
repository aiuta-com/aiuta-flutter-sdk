import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_strings.g.dart';

/// Strings used in the feedback feature of the virtual try-on functionality.
sealed class AiutaTryOnFeedbackStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnFeedbackStrings] with the specified [type].
  AiutaTryOnFeedbackStrings(this.type);

  // Internal json staff
  factory AiutaTryOnFeedbackStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnFeedbackStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnFeedbackStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on feedback strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnFeedbackStrings`.
///
/// This class represents the default, built-in strings for the feedback feature.
@JsonSerializable()
class AiutaTryOnFeedbackStringsBuiltIn extends AiutaTryOnFeedbackStrings {
  /// Creates an instance of the built-in try-on feedback strings.
  AiutaTryOnFeedbackStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnFeedbackStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFeedbackStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnFeedbackStrings`.
///
/// This class allows for custom strings to be provided for the feedback feature.
@JsonSerializable()
class AiutaTryOnFeedbackStringsCustom extends AiutaTryOnFeedbackStrings {
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

  /// Creates an [AiutaTryOnFeedbackStringsCustom] with the [feedbackOptions] list
  /// of predefined feedback reactions, [feedbackTitle] for the bottom sheet,
  /// [feedbackButtonSkip] for the skip button, [feedbackButtonSend] to
  /// send the feedback and [feedbackGratitudeText] to show the user
  /// after the feedback is sent.
  AiutaTryOnFeedbackStringsCustom({
    required this.feedbackOptions,
    required this.feedbackTitle,
    required this.feedbackButtonSkip,
    required this.feedbackButtonSend,
    required this.feedbackGratitudeText,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnFeedbackStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFeedbackStringsCustomToJson(this);
}
