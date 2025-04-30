import 'package:aiuta_flutter/configuration/ui/theme/aiuta_theme.dart';
import 'package:aiutasdk_example/defaults/theme/button/aiuta_theme_default_button.dart';
import 'package:aiutasdk_example/defaults/theme/color/aiuta_theme_default_color.dart';
import 'package:aiutasdk_example/defaults/theme/error/aiuta_theme_default_error_snackbar.dart';
import 'package:aiutasdk_example/defaults/theme/font/aiuta_theme_default_fonts.dart';
import 'package:aiutasdk_example/defaults/theme/image/aiuta_theme_default_image.dart';
import 'package:aiutasdk_example/defaults/theme/label/aiuta_theme_default_label.dart';
import 'package:aiutasdk_example/defaults/theme/pagebar/aiuta_theme_default_page_bar.dart';
import 'package:aiutasdk_example/defaults/theme/powerbar/aiuta_theme_default_power_bar.dart';
import 'package:aiutasdk_example/defaults/theme/productbar/aiuta_theme_default_product_bar.dart';
import 'package:aiutasdk_example/defaults/theme/selection/aiuta_theme_default_selection_snackbar.dart';
import 'package:aiutasdk_example/defaults/theme/sheet/aiuta_theme_default_bottom_sheet.dart';

final class ThemeBuilder {
  AiutaTheme build() => AiutaTheme(
        color: ColorThemeBuilder().build(),
        fonts: FontThemeBuilder().build(),
        label: LabelThemeBuilder().build(),
        image: ImageThemeBuilder().build(),
        button: ButtonThemeBuilder().build(),
        pageBar: PageBarThemeBuilder().build(),
        bottomSheet: BottomSheetThemeBuilder().build(),
        selectionSnackbar: SelectionSnackbarThemeBuilder().build(),
        errorSnackbar: ErrorSnackbarThemeBuilder().build(),
        productBar: ProductBarThemeBuilder().build(),
        powerBar: PowerBarThemeBuilder().build(),
      );
}
