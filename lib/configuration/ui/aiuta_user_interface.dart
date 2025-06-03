import 'package:aiuta_flutter/configuration/ui/policies/aiuta_presentation_style.dart';
import 'package:aiuta_flutter/configuration/ui/policies/aiuta_swipe_to_dismiss_policy.dart';
import 'package:json_annotation/json_annotation.dart';
import 'theme/aiuta_theme.dart';

part 'aiuta_user_interface.g.dart';

/// This class is used to configure the user interface of the Aiuta SDK.
/// It contains the presentation style, swipe-to-dismiss policy, and theme configuration.
@JsonSerializable()
class AiutaUserInterfaceConfiguration {
  /// Defines how the SDK will be presented.
  final AiutaPresentationStyle presentationStyle;

  /// Defines the swipe-to-dismiss policy.
  final AiutaSwipeToDismissPolicy swipeToDismiss;

  /// Defines the theme configuration.
  final AiutaTheme theme;

  /// Creates an [AiutaUserInterfaceConfiguration] with [presentationStyle] to
  /// configure the presentation style of the SDK, [swipeToDismiss] to
  /// configure the swipe-to-dismiss policy, and [theme] to configure the
  /// theme of the UI components.
  AiutaUserInterfaceConfiguration({
    required this.presentationStyle,
    required this.swipeToDismiss,
    required this.theme,
  });

  /// Creates a built-in user interface configuration with default settings.
  factory AiutaUserInterfaceConfiguration.builtIn() {
    return AiutaUserInterfaceConfiguration(
      presentationStyle: AiutaPresentationStyle.fullScreen,
      swipeToDismiss: AiutaSwipeToDismissPolicy.protectTheNecessaryPages,
      theme: AiutaTheme.builtIn(),
    );
  }

  // Internal json staff
  factory AiutaUserInterfaceConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AiutaUserInterfaceConfigurationFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaUserInterfaceConfigurationToJson(this);
}
