import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/colors/aiuta_color_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_theme.g.dart';

@JsonSerializable()
class AiutaTheme {
  /// The color theme configuration.
  final AiutaColorTheme color;

  /// The list of fonts available in the theme.
  final List<AiutaFont> fonts;

  final AiutaLabelTheme label;

  final AiutaImageTheme image;

  final AiutaButtonTheme button;

  final AiutaPageBarTheme pageBar;

  final AiutaBottomSheetTheme bottomSheet;

  final AiutaSelectionSnackbarTheme selectionSnackbar;

  final AiutaProductBarTheme productBar;

  AiutaTheme({
    required this.color,
    required this.fonts,
    required this.label,
    required this.image,
    required this.button,
    required this.pageBar,
    required this.bottomSheet,
    required this.selectionSnackbar,
    required this.productBar,
  });

  /// Create a new instance of AiutaTheme from a json map.
  factory AiutaTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaThemeToJson(this);
}
