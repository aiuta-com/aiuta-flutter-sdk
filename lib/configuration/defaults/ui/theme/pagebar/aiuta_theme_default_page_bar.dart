import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class PageBarThemeBuilder {
  AiutaPageBarTheme build() => AiutaPageBarTheme(
        typography: AiutaPageBarTypographyBuiltIn(),
        icons: AiutaPageBarIconsBuiltIn(),
        toggles: AiutaPageBarToggles(
          preferCloseButtonOnTheRight: false,
        ),
      );
}
