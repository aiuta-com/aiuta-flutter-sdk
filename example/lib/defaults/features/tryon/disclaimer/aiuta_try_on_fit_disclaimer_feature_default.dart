import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/fit_disclaimer/aiuta_try_on_fit_disclaimer_strings.dart';

final class TryOnFitDisclaimerFeatureBuilder {
  AiutaTryOnFitDisclaimerFeature build() => AiutaTryOnFitDisclaimerFeature(
        icons: AiutaTryOnFitDisclaimerIcons(
          info20: null,
        ),
        strings: AiutaTryOnFitDisclaimerStrings(
          fitDisclaimerTitle: "Results may vary from real-life fit",
          fitDisclaimerDescription:
              "Virtual try-on is a visualization tool that shows how items might look and may not perfectly represent how the item will fit in reality",
          fitDisclaimerButtonClose: "Close",
        ),
      );
}
