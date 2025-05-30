import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_typography.dart';

final class LabelThemeBuilder {
  AiutaLabelTheme build() => AiutaLabelTheme(
        typography: AiutaLabelTypographyBuiltIn(),
      );
}
