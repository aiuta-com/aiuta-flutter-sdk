import 'package:aiuta_flutter/configuration/ui/theme/colors/aiuta_color_scheme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/colors/aiuta_color_theme.dart';

final class ColorThemeBuilder {
  AiutaColorTheme build() => AiutaColorTheme(
        scheme: AiutaColorScheme.light,
        brand: "#FF4000FF",
        primary: "#FF000000",
        secondary: "#FF9F9F9F",
        onDark: "#FFFFFFFF",
        onLight: "#FF000000",
        background: "#FFFFFFFF",
        screen: "#FFFFFFFF",
        neutral: "#FFF2F2F7",
        border: "#FFE5E5EA",
        outline: "#FFC7C7CC",
      );
}
