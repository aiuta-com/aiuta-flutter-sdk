import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_feedback_icons.dart';
import 'other/aiuta_try_on_feedback_other_feature.dart';
import 'aiuta_try_on_feedback_strings.dart';

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

  /// Create a new instance of AiutaTryOnFeedbackFeature from a json map.
  factory AiutaTryOnFeedbackFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackFeatureToJson(this);
}

