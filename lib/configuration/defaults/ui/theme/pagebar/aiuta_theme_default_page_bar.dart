import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_typography.dart';

final class PageBarThemeBuilder {
  AiutaPageBarTheme build() => AiutaPageBarTheme(
        typography: AiutaPageBarTypographyBuiltIn(),
        icons: AiutaPageBarIconsBuiltIn(),
        toggles: AiutaPageBarToggles(
          preferCloseButtonOnTheRight: false,
        ),
      );
}
