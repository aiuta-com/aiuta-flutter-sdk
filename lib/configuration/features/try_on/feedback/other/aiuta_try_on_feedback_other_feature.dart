import 'package:json_annotation/json_annotation.dart';
import 'aiuta_try_on_feedback_other_strings.dart';

part 'aiuta_try_on_feedback_other_feature.g.dart';

@JsonSerializable()
class AiutaTryOnFeedbackOtherFeature {
  /// Strings used in the other feedback feature.
  final AiutaTryOnFeedbackOtherStrings strings;

  AiutaTryOnFeedbackOtherFeature({
    required this.strings,
  });

  /// Create a new instance of AiutaTryOnFeedbackOtherFeature from a json map.
  factory AiutaTryOnFeedbackOtherFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFeedbackOtherFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnFeedbackOtherFeatureToJson(this);
}
