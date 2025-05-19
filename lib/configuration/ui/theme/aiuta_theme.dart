import 'package:aiuta_flutter/configuration/ui/theme/bottom_sheet/aiuta_bottom_sheet_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/colors/aiuta_color_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/product_bar/aiuta_product_bar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/selection_snackbar/aiuta_selection_snackbar_theme.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font.dart';
import 'package:aiuta_flutter/configuration/ui/theme/error_snackbar/aiuta_error_snackbar_theme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_theme.g.dart';

/// This class is used to configure the theme of the Aiuta SDK UI components.
@JsonSerializable()
class AiutaTheme {
  /// The color theme configuration.
  final AiutaColorTheme color;

  /// The list of fonts available in the theme.
  final List<AiutaFont> fonts;

  /// Configuration for the labels/text views.
  final AiutaLabelTheme label;

  /// Configuration for the image view.
  final AiutaImageTheme image;

  /// Configuration for the buttons.
  final AiutaButtonTheme button;

  /// Configuration for the page bar (like Android `appBar` and iOS `navBar`).
  /// Contains the title and back/close/action buttons.
  final AiutaPageBarTheme pageBar;

  /// Configuration for the bottom sheets for both the SDK ti be displayed itself
  /// and other bottom sheets inside the SDK like the one for the product
  /// details, image picker, etc.
  final AiutaBottomSheetTheme bottomSheet;

  /// Configuration for the selection snackbar that is embeds inside the
  /// pages with the lists of some items (like the generations history),
  /// allows to select multiple items and perform actions on them.
  final AiutaSelectionSnackbarTheme selectionSnackbar;

  /// Configuration for the error snackbar that displays error messages.
  final AiutaErrorSnackbarTheme errorSnackbar;

  /// Configuration for the product bars that is showing the product info:
  /// images, title, brand name and optionally prices.
  final AiutaProductBarTheme productBar;

  /// Configuration for the "Powered By Aiuta" label that can be used in some
  /// places like the bottom of the screen while waiting for the generation,
  /// in accordance with your agreement with Aiuta.
  final AiutaPowerBarTheme powerBar;

  /// Creates an [AiutaTheme] with [color] theme, [fonts] available for the SDK
  /// to use in the UI, [label] for showing the text view, [image] views,
  /// [button], [pageBar], [bottomSheet] styles, [selectionSnackbar]
  /// to configure the lists selections, [errorSnackbar] to display errors,
  /// [productBar] for everything related to the product info,
  /// and [powerBar] to configure the "Powered By Aiuta" label.
  ///
  /// Note: In accordance with your agreement with Aiuta [powerBar] may be hidden
  /// by the subscription details info retrieved from the Aiuta backend, but in
  /// order to not bring cross complexity to the SDK, we ask you to configure
  /// its styles here regardless of whether it will be displayed or not.
  ///
  /// Note: In case of failure to load the subscription details info from the
  /// Aiuta backend, the SDK will *NOT* display the "Powered By Aiuta" [powerBar]
  /// by default until the subscription details info is loaded successfully and
  /// the agreement with Aiuta explicitly allows to display it.
  AiutaTheme({
    required this.color,
    required this.fonts,
    required this.label,
    required this.image,
    required this.button,
    required this.pageBar,
    required this.bottomSheet,
    required this.selectionSnackbar,
    required this.errorSnackbar,
    required this.productBar,
    required this.powerBar,
  });

  // Internal json staff
  factory AiutaTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaThemeToJson(this);
}
