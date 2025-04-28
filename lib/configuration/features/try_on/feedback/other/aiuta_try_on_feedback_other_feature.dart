import 'package:aiuta_flutter/configuration/features/try_on/feedback/other/aiuta_try_on_feedback_other_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_feedback_other_feature.g.dart';

@JsonSerializable()
class AiutaTryOnFeedbackOtherFeature {
  /// Strings used in the other feedback feature.
  final AiutaTryOnFeedbackOtherStrings strings;

  AiutaTryOnFeedbackOtherFeature({
    required this.strings,
  });

  // Internal json staff
  factory AiutaTryOnFeedbackOtherFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackOtherFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackOtherFeatureToJson(this);
}
