import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/feedback/aiuta_try_on_feedback_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class TryOnFeedbackFeatureBuilder {
  AiutaTryOnFeedbackFeature build() => AiutaTryOnFeedbackFeature(
        otherFeedback: null,
        icons: AiutaTryOnFeedbackIconsCustom(
          like36: AiutaIcon(path: "res/icons/ic_like_36.png"),
          dislike36: AiutaIcon(path: "res/icons/ic_dislike_36.png"),
          gratitude40: AiutaIcon(path: "res/icons/ic_gratitude_40.png"),
        ),
        strings: AiutaTryOnFeedbackStringsCustom(
          feedbackOptions: [
            "This style isn’t for me",
            "The item looks off",
            "I look different",
          ],
          feedbackTitle: "Can you tell us more?",
          feedbackButtonSkip: "Skip",
          feedbackButtonSend: "Send",
          feedbackGratitudeText: "Thank you for your feedback",
        ),
      );
}
