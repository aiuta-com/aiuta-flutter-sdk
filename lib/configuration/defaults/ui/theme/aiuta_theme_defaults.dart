import 'package:aiuta_flutter/configuration/defaults/ui/theme/button/aiuta_theme_default_button.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/color/aiuta_theme_default_color.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/error/aiuta_theme_default_error_snackbar.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/image/aiuta_theme_default_image.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/label/aiuta_theme_default_label.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/pagebar/aiuta_theme_default_page_bar.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/powerbar/aiuta_theme_default_power_bar.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/productbar/aiuta_theme_default_product_bar.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/selection/aiuta_theme_default_selection_snackbar.dart';
import 'package:aiuta_flutter/configuration/defaults/ui/theme/sheet/aiuta_theme_default_bottom_sheet.dart';
import 'package:aiuta_flutter/configuration/ui/theme/aiuta_theme.dart';

final class AiutaThemeDefaultBuilder {
  AiutaTheme build() => AiutaTheme(
        color: AiutaColorThemeDefaultBuilder().build(),
        fonts: [],
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
