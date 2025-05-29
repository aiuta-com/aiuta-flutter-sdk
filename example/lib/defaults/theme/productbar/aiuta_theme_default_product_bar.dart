import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ProductBarThemeBuilder {
  AiutaProductBarTheme build() => AiutaProductBarTheme(
        prices: null, // or provide a builder if needed
        typography: AiutaProductBarTypography(
          product: AiutaTextStyle(
            fontFamily: "Roboto",
            fontWeight: AiutaFontWeight.medium,
            fontSize: 12,
            letterSpacing: 0,
            lineHeight: 18,
          ),
          brand: AiutaTextStyle(
            fontFamily: "Default",
            fontWeight: AiutaFontWeight.medium,
            fontSize: 10,
            lineHeight: 16,
            letterSpacing: 0.04,
          ),
        ),
        icons: AiutaProductBarIconsCustom(
          arrow16: AiutaIcon(path: "res/icons/ic_arrow_16.png"),
        ),
        toggles: AiutaProductBarToggles(
          applyProductFirstImageExtraPadding: false,
        ),
      );
}
