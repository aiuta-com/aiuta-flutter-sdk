import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_event.dart';
import 'package:aiuta_flutter/models/images/aiuta_history_image.dart';
import 'package:aiuta_flutter/models/product/aiuta_product.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_auth_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_data_action.dart';
import 'package:aiuta_flutter/src/models/errors/aiuta_host_error.dart';
import 'package:aiuta_flutter/src/platform/aiuta_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class AiutaPlatform extends PlatformInterface {
  AiutaPlatform() : super(token: _token);

  static final Object _token = Object();

  static AiutaPlatform _instance = MethodChannelAiuta();

  /// The default instance of [AiutaPlatform] to use.
  /// Defaults to [MethodChannelAiuta].
  static AiutaPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AiutaPlatform] when
  /// they register themselves.
  static set instance(AiutaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  // Configuration

  Future<bool> isAvailable() {
    throw UnimplementedError(
      'isAvailable() has not been implemented.',
    );
  }

  Future<bool> isForeground() {
    throw UnimplementedError(
      'isForeground() has not been implemented.',
    );
  }

  Future<void> configure({
    required AiutaConfiguration configuration,
  }) {
    throw UnimplementedError(
      'configure() has not been implemented.',
    );
  }

  // Flows

  Future<void> startAiutaFlow({
    required AiutaProduct product,
    required AiutaConfiguration configuration,
  }) {
    throw UnimplementedError(
      'startAiutaFlow() has not been implemented.',
    );
  }

  Future<void> startHistoryFlow({
    required AiutaConfiguration configuration,
  }) {
    throw UnimplementedError(
      'startHistoryFlow() has not been implemented.',
    );
  }

  // Auth

  Future<void> resolveJwt({required String token}) {
    throw UnimplementedError(
      'resolveJwtAuth() has not been implemented.',
    );
  }

  // Consent

  Future<void> updateObtainedConsentsIds({
    required List<String> obtainedConsentsIds,
  }) {
    throw UnimplementedError(
      'updateObtainedConsentsIds() has not been implemented.',
    );
  }

  // Observe

  Stream<AiutaAuthAction> observeAiutaAuthActions() {
    throw UnimplementedError(
      'observeAiutaAuthActions() has not been implemented.',
    );
  }

  Stream<AiutaAction> observeAiutaActions() {
    throw UnimplementedError(
      'observeAiutaActions() has not been implemented.',
    );
  }

  Stream<AiutaDataAction> observeAiutaDataActions() {
    throw UnimplementedError(
      'observeAiutaDataActions() has not been implemented.',
    );
  }

  Stream<AiutaAnalyticsEvent> observeAiutaAnalytics() {
    throw UnimplementedError(
      'observeAiutaAnalytic() has not been implemented.',
    );
  }

  // OLD

  Future<void> updateActiveAiutaProduct({
    required AiutaProduct updatedAiutaProduct,
  }) {
    throw UnimplementedError(
      'updateActiveAiutaProduct() has not been implemented.',
    );
  }

  Future<void> updateUploadedImages({
    required List<AiutaHistoryImage> uploadedImages,
  }) {
    throw UnimplementedError(
      'updateActiveUploadedImages() has not been implemented.',
    );
  }

  Future<void> updateGeneratedImages({
    required List<AiutaHistoryImage> generatedImages,
  }) {
    throw UnimplementedError(
      'updateGeneratedImages() has not been implemented.',
    );
  }

  Future<void> notifyAboutError({
    required AiutaHostError error,
  }) {
    throw UnimplementedError(
      'notifyAboutError() has not been implemented.',
    );
  }
}
