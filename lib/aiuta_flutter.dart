import 'dart:async';
import 'dart:convert';

import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/configuration/auth/aiuta_auth.dart';
import 'package:aiuta_flutter/configuration/features/consent/aiuta_consent_feature.dart';
import 'package:aiuta_flutter/configuration/features/consent/standalone/aiuta_consent_standalone_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/onboarding/aiuta_onboarding_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/wishlist/aiuta_wishlist_data_provider.dart';
import 'package:aiuta_flutter/models/product/aiuta_product.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_auth_action.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_data_action.dart';
import 'package:aiuta_flutter/src/models/errors/aiuta_data_action_error.dart';
import 'package:aiuta_flutter/src/models/success/aiuta_data_action_success.dart';
import 'package:aiuta_flutter/src/platform/aiuta_platform_interface.dart';

part 'src/platform/aiuta_flutter_internal.dart';

/// [Aiuta] is the main class that provides the public API for the Aiuta SDK.
/// To use Aiuta, you need to create an instance of Aiuta and provide an [AiutaConfiguration].
/// Check that the Aiuta SDK is available by calling [isAvailable] before creating an instance.
class Aiuta {
  /// Check if the Aiuta SDK is available.
  ///
  /// Since iOS SDK requires iOS 13.0 or later to operate, but can be compiled for iOS 12.0,
  /// this will always completes with false if the iOS version is lower than 13.0.
  ///
  /// On Android this future will always completes with true
  /// as it can not be compiled with unsupported toolchains.
  ///
  /// Other platforms will return false.
  ///
  /// Additional checks for availability are performed in the native code,
  /// and may be extended in the future.
  static Future<bool> get isAvailable => _platform.isAvailable();

  /// Check if the Aiuta SDK is currently displayed.
  static Future<bool> get isForeground => _platform.isForeground();

  /// The configuration object that is used to configure the Aiuta SDK.
  final AiutaConfiguration configuration;

  /// Create a new instance of [Aiuta].
  /// [configuration] is required to setup the Aiuta SDK.
  Aiuta({required this.configuration}) {
    _configure(configuration);
  }

  /// Starts the virtual try-on flow with the given [product].
  Future<void> startTryonFlow({required AiutaProduct product}) {
    return _platform.startAiutaFlow(
      product: product,
      configuration: configuration,
    );
  }

  /// Starts the virtual try-on flow with the given list of [products] for outfit try-on.
  Future<void> startOutfitTryonFlow({required List<AiutaProduct> products}) {
    return _platform.startOutfitAiutaFlow(
      products: products,
      configuration: configuration,
    );
  }

  /// Provide the user with a history of their virtual try-on generations.
  Future<void> startHistoryFlow() {
    return _platform.startHistoryFlow(
      configuration: configuration,
    );
  }
}
