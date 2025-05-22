import 'dart:convert';
import 'dart:io';
import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_event.dart';
import 'package:aiuta_flutter/models/images/aiuta_generated_image.dart';
import 'package:aiuta_flutter/models/images/aiuta_input_image.dart';
import 'package:aiuta_flutter/models/product/aiuta_product.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_auth_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_data_action.dart';
import 'package:aiuta_flutter/src/models/errors/aiuta_data_action_error.dart';
import 'package:aiuta_flutter/src/models/success/aiuta_data_action_success.dart';
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

  // Share

  @override
  Future<void> resolveShareText({
    required List<String> productIds,
    required String text,
  }) {
    return methodChannel.invokeMethod(
      'resolveShareText',
      {
        "productIds": jsonEncode(productIds),
        "text": text,
      },
    );
  }

  // Update listenable values from data providers

  @override
  updateIsOnboardingCompleted({
    required bool isOnboardingCompleted,
  }) {
    return methodChannel.invokeMethod(
      'updateIsOnboardingCompleted',
      {
        "isOnboardingCompleted": isOnboardingCompleted,
      },
    );
  }

  @override
  Future<void> updateObtainedConsentsIds(
      {required List<String> obtainedConsentsIds}) {
    return methodChannel.invokeMethod(
      'updateObtainedConsentsIds',
      {
        "obtainedConsentsIds": jsonEncode(obtainedConsentsIds),
      },
    );
  }

  @override
  Future<void> updateUploadedImages({
    required List<AiutaInputImage> uploadedImages,
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
    required List<AiutaGeneratedImage> generatedImages,
  }) {
    return methodChannel.invokeMethod(
      'updateGeneratedImages',
      {
        "generatedImages": jsonEncode(generatedImages),
      },
    );
  }

  @override
  Future<void> updateWishlistProductIds({
    required List<String> wishlistProductIds,
  }) {
    return methodChannel.invokeMethod(
      'updateWishlistProductIds',
      {
        "wishlistProductIds": jsonEncode(wishlistProductIds),
      },
    );
  }

  // Observe data providers callbacks

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

  // Report data action completion

  Future<void> notifyDataActionSucceeded({
    required AiutaDataActionSuccess success,
  }) {
    return methodChannel.invokeMethod(
      'notifyDataActionSucceeded',
      {
        "success": jsonEncode(success),
      },
    );
  }

  @override
  Future<void> notifyDataActionErrorThrown({
    required AiutaDataActionError error,
  }) {
    return methodChannel.invokeMethod(
      'notifyDataActionErrorThrown',
      {
        "error": jsonEncode(error),
      },
    );
  }
}
