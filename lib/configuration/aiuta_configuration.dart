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

  final AiutaUserInterfaceConfiguration userInterface;

  final AiutaFeatures features;

  final AiutaAnalytics? analytics;

  final AiutaDebugSettings debugSettings;

  /// Create a new instance of AiutaConfiguration.
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
