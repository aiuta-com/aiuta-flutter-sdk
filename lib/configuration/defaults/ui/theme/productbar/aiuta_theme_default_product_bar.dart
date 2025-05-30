import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ProductBarThemeBuilder {
  AiutaProductBarTheme build() => AiutaProductBarTheme(
        prices: null,
        typography: AiutaProductBarTypographyBuiltIn(),
        icons: AiutaProductBarIconsBuiltIn(),
        toggles: AiutaProductBarToggles(
          applyProductFirstImageExtraPadding: false,
        ),
      );
}
