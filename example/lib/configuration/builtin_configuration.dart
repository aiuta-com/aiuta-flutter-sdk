import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics.dart';
import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics_handler.dart';
import 'package:aiuta_flutter/configuration/auth/aiuta_auth.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
import 'package:flutter/foundation.dart';

AiutaConfiguration buildBuiltInConfiguration({
  required String apiKey,
}) {
  return AiutaConfiguration.builtIn(
    auth: AiutaApiKeyAuth(apiKey: apiKey),
    termsOfServiceUrl: "https://your-domain.com/you-tos",
    cartHandler: AiutaTryOnCartHandler(
      addToCart: (productId) {
        debugPrint("[Cart] Added product: $productId");
      },
    ),
    analytics: AiutaAnalytics(
      handler: AiutaAnalyticsHandler(
        onAnalyticsEvent: (event) {
          debugPrint("[Analytics] ${event.type}: ${event.toJson()}");
        },
      ),
    ),
  );
}
