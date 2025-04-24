import 'package:aiuta_flutter/configuration/ui/policies/aiuta_presentation_style.dart';
import 'package:aiuta_flutter/configuration/ui/policies/aiuta_swipe_to_dismiss_policy.dart';
import 'package:json_annotation/json_annotation.dart';
import 'theme/aiuta_theme.dart';

part 'aiuta_user_interface.g.dart';

@JsonSerializable()
class AiutaUserInterfaceConfiguration {
  /// Defines the presentation style of the SDK.
  final AiutaPresentationStyle presentationStyle;

  /// Defines the swipe-to-dismiss policy.
  final AiutaSwipeToDismissPolicy swipeToDismiss;

  /// Defines the theme configuration.
  final AiutaTheme theme;

  /// Constructor for AiutaUserInterfaceConfiguration.
  AiutaUserInterfaceConfiguration({
    required this.presentationStyle,
    required this.swipeToDismiss,
    required this.theme,
  });

  /// Create a new instance of AiutaUserInterfaceConfiguration from a json map.
  factory AiutaUserInterfaceConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AiutaUserInterfaceConfigurationFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaUserInterfaceConfigurationToJson(this);
}