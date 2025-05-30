import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_strings.dart';

final class AiutaTryOnFeedbackFeatureDefaultBuilder {
  AiutaTryOnFeedbackFeature build() => AiutaTryOnFeedbackFeature(
      otherFeedback: null,
      icons: AiutaTryOnFeedbackIconsBuiltIn(),
      strings: AiutaTryOnFeedbackStringsBuiltIn());
}
