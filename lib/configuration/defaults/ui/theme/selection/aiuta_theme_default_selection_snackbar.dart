import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_theme.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class SelectionSnackbarThemeBuilder {
  AiutaSelectionSnackbarTheme build() => AiutaSelectionSnackbarTheme(
        strings: AiutaSelectionSnackbarStringsBuiltIn(),
        icons: AiutaSelectionSnackbarIconsBuiltIn(),
        colors: AiutaSelectionSnackbarColors(
          selectionBackground: "#FF000000",
        ),
      );
}
