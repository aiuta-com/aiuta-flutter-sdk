import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';

final class LabelThemeBuilder {
  AiutaLabelTheme build() => AiutaLabelTheme(
        typography: AiutaLabelTypography(
          titleL: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 24,
            fontWeight: AiutaFontWeight.extrabold,
            letterSpacing: 0,
            lineHeight: 30.42,
          ),
          titleM: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
            fontWeight: AiutaFontWeight.bold,
            letterSpacing: 0,
            lineHeight: 25.35,
          ),
          regular: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: AiutaFontWeight.medium,
            letterSpacing: 0,
            lineHeight: 20,
          ),
          subtle: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: AiutaFontWeight.medium,
            letterSpacing: 0,
            lineHeight: 18,
          ),
        ),
      );
}
