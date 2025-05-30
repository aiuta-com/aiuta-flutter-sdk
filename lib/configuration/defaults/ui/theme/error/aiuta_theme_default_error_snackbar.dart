import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_strings.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_theme.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ErrorSnackbarThemeBuilder {
  AiutaErrorSnackbarTheme build() => AiutaErrorSnackbarTheme(
        strings: AiutaErrorSnackbarStringsBuiltIn(),
        icons: AiutaErrorSnackbarIconsBuiltIn(),
        colors: AiutaErrorSnackbarColors(
          errorBackground: "#FFFFF5F5",
          errorPrimary: "#FF000000",
        ),
      );
}
