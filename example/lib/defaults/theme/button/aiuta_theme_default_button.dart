import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';

final class ButtonThemeBuilder {
  AiutaButtonTheme build() => AiutaButtonTheme(
        typography: AiutaButtonTypography(
          buttonM: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: AiutaFontWeight.bold,
            letterSpacing: 0,
            lineHeight: 20,
          ),
          buttonS: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 13,
            fontWeight: AiutaFontWeight.medium,
            letterSpacing: 0,
            lineHeight: 18,
          ),
        ),
        shapes: AiutaButtonShapes(
          buttonM: 8,
          buttonS: 8,
        ),
      );
}
