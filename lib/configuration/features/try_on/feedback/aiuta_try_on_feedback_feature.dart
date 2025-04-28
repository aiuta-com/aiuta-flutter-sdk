import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/other/aiuta_try_on_feedback_other_feature.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_feature.g.dart';

@JsonSerializable()
class AiutaTryOnFeedbackFeature {
  /// Other feedback feature (nullable).
  final AiutaTryOnFeedbackOtherFeature? otherFeedback;

  /// Icons used in the feedback feature.
  final AiutaTryOnFeedbackIcons icons;

  /// Strings used in the feedback feature.
  final AiutaTryOnFeedbackStrings strings;

  AiutaTryOnFeedbackFeature({
    this.otherFeedback,
    required this.icons,
    required this.strings,
  });

  // Internal json staff
  factory AiutaTryOnFeedbackFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackFeatureToJson(this);
}

