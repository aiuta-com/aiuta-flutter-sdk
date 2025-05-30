import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_strings.dart';
import 'package:aiuta_flutter/configuration/features/try_on/loading_page/aiuta_try_on_loading_page_styles.dart';

final class AiutaTryOnLoadingPageFeatureDefaultBuilder {
  AiutaTryOnLoadingPageFeature build() => AiutaTryOnLoadingPageFeature(
        icons: AiutaTryOnLoadingPageIconsBuiltIn(),
        strings: AiutaTryOnLoadingPageStringsBuiltIn(),
        styles: AiutaTryOnLoadingPageStyles(
          loadingStatusStyle: AiutaTryOnLoadingPageStyle.blurred,
        ),
      );
}
