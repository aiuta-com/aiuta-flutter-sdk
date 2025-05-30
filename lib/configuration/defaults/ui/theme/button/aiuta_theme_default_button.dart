import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_typography.dart';

final class ButtonThemeBuilder {
  AiutaButtonTheme build() => AiutaButtonTheme(
        typography: AiutaButtonTypographyBuiltIn(),
        shapes: AiutaButtonShapes(
          buttonM: 8,
          buttonS: 8,
        ),
      );
}
