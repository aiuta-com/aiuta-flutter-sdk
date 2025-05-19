import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_theme.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class SelectionSnackbarThemeBuilder {
  AiutaSelectionSnackbarTheme build() => AiutaSelectionSnackbarTheme(
        strings: AiutaSelectionSnackbarStrings(
          select: "Select",
          cancel: "Cancel",
          selectAll: "Select All",
          unselectAll: "Unselect all",
        ),
        icons: AiutaSelectionSnackbarIcons(
          trash24: AiutaIcon(path: "res/icons/ic_trash_24.png"),
          check20: AiutaIcon(path: "res/icons/ic_check_20.png"),
        ),
        colors: AiutaSelectionSnackbarColors(
          selectionBackground: "#FF000000",
        ),
      );
}
