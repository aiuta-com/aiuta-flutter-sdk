import 'package:aiuta_flutter/configuration/auth/aiuta_auth_mode.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_auth.g.dart';

/// Base class for Aiuta authentication.
/// This class is used to authenticate Aiuta to use digital try-on API with your credentials.
/// Supported authentication methods are [AiutaApiKeyAuth] or [AiutaJwtAuth].
sealed class AiutaAuth {
  /// Authentication mode is used to determine the type of authentication.
  AiutaAuthMode mode;

  /// Base constructor for AiutaAuthentication.
  AiutaAuth(this.mode);

  // Internal json staff
  factory AiutaAuth.fromJson(Map<String, dynamic> json) {
    switch (json['mode'] as String) {
      case 'apiKey':
        return AiutaApiKeyAuth.fromJson(json);
      case 'jwt':
        return AiutaJwtAuth.fromJson(json);
      default:
        throw Exception('Unknown authentication type');
    }
  }

  Map<String, dynamic> toJson();
}

/// This class is used to authenticate Aiuta using ApiKey, all requests from SDK to Aiuta API are authenticated with this key.
/// Please see [Aiuta API documentation](https://developer.aiuta.com/docs/start) for instructions on how to get your ApiKey.
@JsonSerializable()
class AiutaApiKeyAuth extends AiutaAuth {
  /// ApiKey is used to authenticate all requests.
  final String apiKey;

  /// Create [AiutaApiKeyAuth] with your [apiKey] to access Aiuta API.
  AiutaApiKeyAuth({required this.apiKey}) : super(AiutaAuthMode.apiKey);

  // Internal json staff
  factory AiutaApiKeyAuth.fromJson(Map<String, dynamic> json) =>
      _$AiutaApiKeyAuthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaApiKeyAuthToJson(this);
}

/// This class is used to authenticate Aiuta using JWT and [subscriptionId].
/// JWT is used to authenticate sensitive requests (such as starting virtual try-on).
/// Other requests are authenticated with your [subscriptionId].
/// Please see [Aiuta API documentation](https://developer.aiuta.com/docs/start) for instructions on how to get your subscription id.
@JsonSerializable()
class AiutaJwtAuth extends AiutaAuth {
  /// Subscription id is used to authenticate insecure requests.
  final String subscriptionId;

  /// The function is used to get JWT for sensitive requests.
  /// Return a JWT string that is not empty, a JWT is not expired or invalid.
  /// If throws an exception or JWT is empty, the request will be rejected and
  /// the user will be notified with "Something went wrong" message during virtual try-on.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final Future<String> Function(Map<String, dynamic>) getJwt;

  /// Creates an [AiutaJwtAuth] with your [subscriptionId]
  /// and [getJwt] callback to get JWT for sensitive requests
  /// in order to access Aiuta API.
  AiutaJwtAuth({required this.subscriptionId, required this.getJwt})
      : super(AiutaAuthMode.jwt);

  // Internal json staff
  factory AiutaJwtAuth.fromJson(Map<String, dynamic> json) =>
      _$AiutaJwtAuthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaJwtAuthToJson(this);
}
