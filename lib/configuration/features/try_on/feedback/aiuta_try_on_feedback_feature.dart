import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/other/aiuta_try_on_feedback_other_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_feature.g.dart';

/// Feedback feature for the virtual try-on functionality.
@JsonSerializable()
class AiutaTryOnFeedbackFeature {
  /// Other feedback feature (optional) to allow the user to provide
  /// custom feedback on the try-on result.
  final AiutaTryOnFeedbackOtherFeature? otherFeedback;

  /// Icons used in the feedback feature.
  final AiutaTryOnFeedbackIcons icons;

  /// Strings used in the feedback feature.
  final AiutaTryOnFeedbackStrings strings;

  /// Creates an [AiutaTryOnFeedbackFeature] with the [icons], [strings] and
  /// optional [otherFeedback] to configure the feedback feature.
  AiutaTryOnFeedbackFeature({
    this.otherFeedback,
    required this.icons,
    required this.strings,
  });

  /// Creates a built-in try-on feedback feature configuration with default settings.
  factory AiutaTryOnFeedbackFeature.builtIn() {
    return AiutaTryOnFeedbackFeature(
      icons: AiutaTryOnFeedbackIconsBuiltIn(),
      strings: AiutaTryOnFeedbackStringsBuiltIn(),
    );
  }

  // Internal json staff
  factory AiutaTryOnFeedbackFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackFeatureToJson(this);
}
