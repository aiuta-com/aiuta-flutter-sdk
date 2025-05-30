import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_styles.dart';
import 'package:aiuta_flutter/configuration/features/try_on/aiuta_try_on_toggles.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:aiutasdk_example/defaults/features/tryon/cart/aiuta_try_on_cart_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/tryon/disclaimer/aiuta_try_on_fit_disclaimer_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/tryon/feedback/aiuta_try_on_feedback_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/tryon/history/aiuta_try_on_generations_history_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/tryon/loading/aiuta_try_on_loading_page_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/tryon/other/aiuta_try_on_with_other_photo_feature_default.dart';
import 'package:aiutasdk_example/defaults/features/tryon/validation/aiuta_try_on_input_image_validation_feature_default.dart';

final class TryOnFeatureBuilder {
  AiutaTryOnFeature build() => AiutaTryOnFeature(
        loadingPage: TryOnLoadingPageFeatureBuilder().build(),
        inputImageValidation: TryOnInputImageValidationFeatureBuilder().build(),
        cart: TryOnCartFeatureBuilder().build(),
        fitDisclaimer: TryOnFitDisclaimerFeatureBuilder().build(),
        feedback: TryOnFeedbackFeatureBuilder().build(),
        generationsHistory: TryOnGenerationsHistoryFeatureBuilder().build(),
        otherPhoto: TryOnWithOtherPhotoFeatureBuilder().build(),
        toggles: AiutaTryOnToggles(
          isBackgroundExecutionAllowed: false,
        ),
        icons: AiutaTryOnIcons(
          tryOn20: AiutaIcon(path: "res/icons/ic_tryon_20.png"),
        ),
        strings: AiutaTryOnStrings(
          tryOnPageTitle: "Virtual Try-on",
          tryOn: "Try on",
        ),
        styles: AiutaTryOnStyles(
          tryOnButtonGradient: null,
        ),
      );
}
