import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_grabber.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_typography.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';

final class BottomSheetThemeBuilder {
  AiutaBottomSheetTheme build() => AiutaBottomSheetTheme(
        typography: AiutaBottomSheetTypography(
          iconButton: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: AiutaFontWeight.medium,
            letterSpacing: 0,
            lineHeight: 18,
          ),
          chipsButton: AiutaTextStyle(
            fontFamily: "Roboto",
            fontSize: 14,
            fontWeight: AiutaFontWeight.medium,
            letterSpacing: 0,
            lineHeight: 18,
          ),
        ),
        shapes: AiutaBottomSheetShapes(
          bottomSheet: 16,
          chipsButton: 8,
        ),
        grabber: AiutaBottomSheetGrabber(
          width: 36,
          topPadding: 8,
        ),
        toggles: AiutaBottomSheetToggles(
          extendDelimitersToTheRight: false,
          extendDelimitersToTheLeft: false,
        ),
      );
}
