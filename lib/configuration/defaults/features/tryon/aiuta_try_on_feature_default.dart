import 'package:aiuta_flutter/configuration/defaults/features/tryon/cart/aiuta_try_on_cart_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/tryon/feedback/aiuta_try_on_feedback_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/tryon/history/aiuta_try_on_generations_history_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/tryon/loading/aiuta_try_on_loading_page_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/tryon/other/aiuta_try_on_with_other_photo_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/tryon/validation/aiuta_try_on_input_image_validation_feature_default.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_styles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_toggles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';

final class AiutaTryOnFeatureDefaultBuilder {
  AiutaTryOnFeature build({
    required AiutaTryOnCartHandler cartHandler,
  }) =>
      AiutaTryOnFeature(
        loadingPage: AiutaTryOnLoadingPageFeatureDefaultBuilder().build(),
        inputImageValidation:
            AiutaTryOnInputImageValidationFeatureDefaultBuilder().build(),
        cart: AiutaTryOnCartFeatureDefaultBuilder().build(
          handler: cartHandler,
        ),
        fitDisclaimer: null,
        feedback: AiutaTryOnFeedbackFeatureDefaultBuilder().build(),
        generationsHistory:
            AiutaTryOnGenerationsHistoryFeatureDefaultBuilder().build(),
        otherPhoto: AiutaTryOnWithOtherPhotoFeatureDefaultBuilder().build(),
        toggles: AiutaTryOnToggles(
          isBackgroundExecutionAllowed: false,
        ),
        icons: AiutaTryOnIconsBuiltIn(),
        strings: AiutaTryOnStringsBuiltIn(),
        styles: AiutaTryOnStyles(
          tryOnButtonGradient: null,
        ),
      );
}
