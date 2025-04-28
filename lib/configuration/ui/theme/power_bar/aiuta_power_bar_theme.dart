import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_power_bar_theme.g.dart';

/// Theme for the `Powered By Aiuta` label bar.
///
/// Note: In accordance with your agreement with Aiuta [powerBar] may be hidden
/// by the subscription details info retrieved from the Aiuta backend, but in
/// order to not bring cross complexity to the SDK, we ask you to configure
/// its styles here regardless of whether it will be displayed or not.
///
/// Note: In case of failure to load the subscription details info from the
/// Aiuta backend, the SDK will *NOT* display the "Powered By Aiuta" [powerBar]
/// by default until the subscription details info is loaded successfully and
/// the agreement with Aiuta allows to display it.
@JsonSerializable()
class AiutaPowerBarTheme {
  /// Strings used in the `powered by` bar.
  final AiutaPowerBarStrings strings;

  /// Colors used in the `powered by` bar.
  final AiutaPowerBarColors colors;

  /// Creates an [AiutaPowerBarTheme] with [strings] and [colors].
  AiutaPowerBarTheme({
    required this.strings,
    required this.colors,
  });

  // Internal json staff
  factory AiutaPowerBarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaPowerBarThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPowerBarThemeToJson(this);
}
