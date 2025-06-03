import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_toggles.dart';
import 'package:aiuta_flutter/configuration/ui/theme/page_bar/aiuta_page_bar_typography.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_theme.g.dart';

/// Configuration for the page bar (like Android `appBar` and iOS `navBar`).
/// Contains the title and back/close/action buttons.
@JsonSerializable()
class AiutaPageBarTheme {
  /// Typography styles for the page bar.
  final AiutaPageBarTypography typography;

  /// Icon configurations for the page bar.
  final AiutaPageBarIcons icons;

  /// Toggle configurations for the page bar.
  final AiutaPageBarToggles toggles;

  /// Creates an [AiutaPageBarTheme] with [typography] text styles, [icons],
  /// and [toggles] to configure the page bar appearance.
  AiutaPageBarTheme({
    required this.typography,
    required this.icons,
    required this.toggles,
  });

  /// Creates a built-in page bar theme configuration with default settings.
  factory AiutaPageBarTheme.builtIn() {
    return AiutaPageBarTheme(
      typography: AiutaPageBarTypographyBuiltIn(),
      icons: AiutaPageBarIconsBuiltIn(),
      toggles: AiutaPageBarToggles.builtIn(),
    );
  }

  // Internal json staff
  factory AiutaPageBarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPageBarThemeToJson(this);
}
