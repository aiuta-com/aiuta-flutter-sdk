import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_theme.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ErrorSnackbarThemeBuilder {
  AiutaErrorSnackbarTheme build() => AiutaErrorSnackbarTheme(
        strings: AiutaErrorSnackbarStrings(
          defaultErrorMessage: "Something went wrong. Please try again later",
          tryAgainButton: "Try again",
        ),
        icons: AiutaErrorSnackbarIcons(
          error36: AiutaIcon(path: "res/icons/ic_error_36.png"),
        ),
        colors: AiutaErrorSnackbarColors(
          errorBackground: "#FFFFF5F5",
          errorPrimary: "#FF000000",
        ),
      );
}
