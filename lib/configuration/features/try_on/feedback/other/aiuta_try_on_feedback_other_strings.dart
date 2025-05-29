import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_other_strings.g.dart';

/// Strings used in the other feedback feature.
sealed class AiutaTryOnFeedbackOtherStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnFeedbackOtherStrings] with the specified [type].
  AiutaTryOnFeedbackOtherStrings(this.type);

  // Internal json staff
  factory AiutaTryOnFeedbackOtherStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnFeedbackOtherStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnFeedbackOtherStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on feedback other strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnFeedbackOtherStrings`.
///
/// This class represents the default, built-in strings for the other feedback feature.
@JsonSerializable()
class AiutaTryOnFeedbackOtherStringsBuiltIn extends AiutaTryOnFeedbackOtherStrings {
  /// Creates an instance of the built-in try-on feedback other strings.
  AiutaTryOnFeedbackOtherStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnFeedbackOtherStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackOtherStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFeedbackOtherStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnFeedbackOtherStrings`.
///
/// This class allows for custom strings to be provided for the other feedback feature.
@JsonSerializable()
class AiutaTryOnFeedbackOtherStringsCustom extends AiutaTryOnFeedbackOtherStrings {
  /// Title for the other feedback section.
  final String otherFeedbackTitle;

  /// Text for the "Send" button in the other feedback section.
  final String otherFeedbackButtonSend;

  /// Text for the "Cancel" button in the other feedback section.
  final String otherFeedbackButtonCancel;

  /// Text for the "Other" feedback option.
  final String otherFeedbackOptionOther;

  /// Creates an [AiutaTryOnFeedbackOtherStringsCustom] with the [otherFeedbackTitle],
  /// [otherFeedbackButtonSend], [otherFeedbackButtonCancel] strings for the
  /// components of the other feedback feature, and [otherFeedbackOptionOther]
  /// to be added to the [AiutaTryOnFeedbackFeature.feedbackOptions] as an
  /// additional option to enter custom feedback.
  AiutaTryOnFeedbackOtherStringsCustom({
    required this.otherFeedbackTitle,
    required this.otherFeedbackButtonSend,
    required this.otherFeedbackButtonCancel,
    required this.otherFeedbackOptionOther,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnFeedbackOtherStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackOtherStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnFeedbackOtherStringsCustomToJson(this);
}
