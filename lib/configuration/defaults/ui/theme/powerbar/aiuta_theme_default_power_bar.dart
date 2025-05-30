import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_colors_scheme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_theme.dart';

final class PowerBarThemeBuilder {
  AiutaPowerBarTheme build() => AiutaPowerBarTheme(
        strings: AiutaPowerBarStringsBuiltIn(),
        colors: AiutaPowerBarColors(
          aiuta: AiutaPowerBarColorsScheme.standard,
        ),
      );
}
