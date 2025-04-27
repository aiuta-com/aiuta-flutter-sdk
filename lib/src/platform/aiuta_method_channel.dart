import 'dart:convert';
import 'dart:io';
import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_event.dart';
import 'package:aiuta_flutter/models/images/aiuta_history_image.dart';
import 'package:aiuta_flutter/models/product/aiuta_product.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_auth_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_data_action.dart';
import 'package:aiuta_flutter/src/models/errors/aiuta_host_error.dart';
import 'package:aiuta_flutter/src/platform/aiuta_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class MethodChannelAiuta extends AiutaPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('aiutasdk');

  final aiutaAuthActionsChannel = const EventChannel('aiutaAuthActionsHandler');
  final aiutaActionsChannel = const EventChannel('aiutaActionsHandler');
  final aiutaDataActionsChannel = const EventChannel('aiutaDataActionsHandler');
  final aiutaAnalyticsChannel = const EventChannel('aiutaAnalyticsHandler');

  // Configuration

  @override
  Future<bool> isAvailable() async {
    if (Platform.isIOS) {
      try {
        await methodChannel.invokeMethod('testAvailability');
        return true;
      } catch (e) {
        print("AiutaSDK is unavailable due to ${e.toString()}");
        return false;
      }
    }
    if (Platform.isAndroid) {
      return true;
    }
    return false;
  }

  @override
  Future<bool> isForeground() async {
    final isForeground = await methodChannel.invokeMethod('isForeground');
    return isForeground == true;
  }

  @override
  Future<void> configure({required AiutaConfiguration configuration}) {
    return methodChannel.invokeMethod(
      'configure',
      {
        "configuration": jsonEncode(configuration),
      },
    );
  }

  // Flows

  @override
  Future<void> startAiutaFlow({
    required AiutaProduct product,
    required AiutaConfiguration configuration,
  }) {
    return methodChannel.invokeMethod(
      'startAiutaFlow',
      {
        "product": jsonEncode(product),
        "configuration": jsonEncode(configuration),
      },
    );
  }

  @override
  Future<void> startHistoryFlow({
    required AiutaConfiguration configuration,
  }) {
    return methodChannel.invokeMethod(
      'startHistoryFlow',
      {
        "configuration": jsonEncode(configuration),
      },
    );
  }

  // Auth

  @override
  Future<void> resolveJwt({
    required String token,
  }) {
    return methodChannel.invokeMethod(
      'resolveJwt',
      {
        "jwt": token,
      },
    );
  }

  // Consent

  @override
  Future<void> updateObtainedConsentsIds(
      {required List<String> obtainedConsentsIds}) {
    return methodChannel.invokeMethod(
      'updateObtainedConsentsIds',
      {
        "obtainedConsentsIds": obtainedConsentsIds,
      },
    );
  }

  // Observe

  @override
  Stream<AiutaAuthAction> observeAiutaAuthActions() {
    return aiutaAuthActionsChannel.receiveBroadcastStream().map((event) {
      final json = jsonDecode(event.toString()) as Map<String, dynamic>;
      return AiutaAuthAction.fromJson(json);
    });
  }

  @override
  Stream<AiutaAction> observeAiutaActions() {
    return aiutaActionsChannel.receiveBroadcastStream().map((event) {
      final json = jsonDecode(event.toString()) as Map<String, dynamic>;
      return AiutaAction.fromJson(json);
    });
  }

  @override
  Stream<AiutaDataAction> observeAiutaDataActions() {
    return aiutaDataActionsChannel.receiveBroadcastStream().map((event) {
      final json = jsonDecode(event.toString()) as Map<String, dynamic>;
      return AiutaDataAction.fromJson(json);
    });
  }

  @override
  Stream<AiutaAnalyticsEvent> observeAiutaAnalytics() {
    return aiutaAnalyticsChannel.receiveBroadcastStream().map((event) {
      final json = jsonDecode(event.toString()) as Map<String, dynamic>;
      return AiutaAnalyticsEvent.fromJson(json);
    });
  }

  // OLD

  @override
  Future<void> updateActiveAiutaProduct({
    required AiutaProduct updatedAiutaProduct,
  }) {
    return methodChannel.invokeMethod(
      'updateActiveAiutaProduct',
      {
        "product": jsonEncode(updatedAiutaProduct),
      },
    );
  }

  @override
  Future<void> updateUploadedImages({
    required List<AiutaHistoryImage> uploadedImages,
  }) {
    return methodChannel.invokeMethod(
      'updateUploadedImages',
      {
        "uploadedImages": jsonEncode(uploadedImages),
      },
    );
  }

  @override
  Future<void> updateGeneratedImages({
    required List<AiutaHistoryImage> generatedImages,
  }) {
    return methodChannel.invokeMethod(
      'updateGeneratedImages',
      {
        "generatedImages": jsonEncode(generatedImages),
      },
    );
  }

  @override
  Future<void> notifyAboutError({
    required AiutaHostError error,
  }) {
    return methodChannel.invokeMethod(
      'notifyAboutError',
      {
        "error": jsonEncode(error),
      },
    );
  }
}
