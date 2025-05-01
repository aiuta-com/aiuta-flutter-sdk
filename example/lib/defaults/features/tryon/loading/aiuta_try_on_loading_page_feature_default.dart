import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_styles.dart';

final class TryOnLoadingPageFeatureBuilder {
  AiutaTryOnLoadingPageFeature build() => AiutaTryOnLoadingPageFeature(
        icons: AiutaTryOnLoadingPageIcons(
          loading14: null,
        ),
        strings: AiutaTryOnLoadingPageStrings(
          tryOnLoadingStatusUploadingImage: "Uploading image",
          tryOnLoadingStatusScanningBody: "Scanning your body",
          tryOnLoadingStatusGeneratingOutfit: "Generating outfit",
        ),
        styles: AiutaTryOnLoadingPageStyles(
          loadingStatusBackgroundGradient: ["#FF4000FF", "#00000000"],
          loadingStatusStyle: AiutaTryOnLoadingPageStyle.blurred,
        ),
      );
}
