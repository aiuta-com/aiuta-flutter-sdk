import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_grabber.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_typography.dart';

final class BottomSheetThemeBuilder {
  AiutaBottomSheetTheme build() => AiutaBottomSheetTheme(
        typography: AiutaBottomSheetTypographyBuiltIn(),
        shapes: AiutaBottomSheetShapes(
          bottomSheet: 16,
          chipsButton: 8,
        ),
        grabber: AiutaBottomSheetGrabber(
          width: 36,
          height: 3,
          topPadding: 8,
        ),
        toggles: AiutaBottomSheetToggles(
          extendDelimitersToTheRight: false,
          extendDelimitersToTheLeft: false,
        ),
      );
}
