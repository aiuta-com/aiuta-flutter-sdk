import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class PageBarThemeBuilder {
  AiutaPageBarTheme build() => AiutaPageBarTheme(
        typography: AiutaPageBarTypography(
          pageTitle: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: AiutaFontWeight.medium,
            letterSpacing: 0,
            lineHeight: 18,
          ),
        ),
        icons: AiutaPageBarIcons(
          back24: AiutaIcon(path: "res/icons/ic_back_24.png"),
          close24: AiutaIcon(path: "res/icons/ic_close_24.png"),
        ),
        toggles: AiutaPageBarToggles(
          preferCloseButtonOnTheRight: false,
        ),
      );
}
