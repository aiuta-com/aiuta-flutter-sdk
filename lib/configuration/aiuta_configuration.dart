import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics.dart';
import 'package:aiuta_flutter/configuration/auth/aiuta_auth.dart';
import 'package:aiuta_flutter/configuration/debug/aiuta_debug_settings.dart';
import 'package:aiuta_flutter/configuration/features/aiuta_features.dart';
import 'package:aiuta_flutter/configuration/ui/aiuta_user_interface.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_configuration.g.dart';

/// This class is used to configure the Aiuta SDK.
/// It contains the authentication configuration, user interface configuration,
/// features configuration, analytics configuration, and debug settings.
@JsonSerializable()
class AiutaConfiguration {
  /// Authentication configuration.
  /// This is required to authenticate Aiuta to use digital try-on API with your credentials.
  /// Supported authentication methods are [AiutaApiKeyAuth] or [AiutaJwtAuth].
  ///
  /// With [AiutaJwtAuth], only sensitive requests (such as starting virtual try-on) are authenticated with JWT.
  /// Other requests are authenticated with your subscription id.
  ///
  /// With [AiutaApiKeyAuth], all requests are authenticated with your API key.
  ///
  /// Please see [Aiuta API documentation](https://developer.aiuta.com/docs/start) for instructions on how to get your credentials.
  final AiutaAuth auth;

  /// Configuration of the user interface presentation style, swipe-to-dismiss
  /// policy, and UI components themes for the Aiuta SDK.
  final AiutaUserInterfaceConfiguration userInterface;

  /// Configuration of the features of the SDK and the interaction with the app.
  final AiutaFeatures features;

  /// Configuration of the analytics handler to receive events from the SDK.
  final AiutaAnalytics? analytics;

  /// Configuration of the debug settings of the SDK.
  /// It contains the logging settings and validation policies for various parameters.
  final AiutaDebugSettings debugSettings;

  /// Creates an [AiutaConfiguration] with [auth] to authenticate Aiuta to use
  /// digital try-on API with your credentials, [userInterface] to configure
  /// the user interface behavior, themes, and colors, [features] to configure
  /// the features of the SDK and the interaction with thw app, [analytics] to
  /// receive events from the SDK and send them to your analytics provider, and
  /// [debugSettings] to configure the logging and validation of the parameters.
  AiutaConfiguration({
    required this.auth,
    required this.userInterface,
    required this.features,
    this.analytics,
    required this.debugSettings,
  });

  // Internal json staff
  factory AiutaConfiguration.fromJson(Map<String, dynamic> json) =>
      _$AiutaConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaConfigurationToJson(this);
}
