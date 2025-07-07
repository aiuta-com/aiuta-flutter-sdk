import 'package:aiuta_flutter/aiuta_flutter.dart';
import 'package:aiuta_flutter/configuration/aiuta_configuration.dart';
import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics.dart';
import 'package:aiuta_flutter/configuration/analytics/aiuta_analytics_handler.dart';
import 'package:aiuta_flutter/configuration/auth/aiuta_auth.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
import 'package:aiuta_flutter/models/product/aiuta_product.dart';
import 'package:aiutasdk_example/env/env.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _aiuta = Aiuta(
    configuration: AiutaConfiguration.builtIn(
      auth: AiutaApiKeyAuth(apiKey: Env.API_KEY),
      termsOfServiceUrl: "https://your-domain.com/you-tos",
      cartHandler: AiutaTryOnCartHandler(
        addToCart: (productId) {
          // Handle adding product to cart
        },
      ),
      analytics: AiutaAnalytics(
        handler: AiutaAnalyticsHandler(
          onAnalyticsEvent: (event) {
            // Handle analytics event
            debugPrint("$event: ${event.toJson()}");
          },
        ),
      ),
    ),
  );

  bool _isAiutaAvailable = false;

  @override
  void initState() {
    super.initState();
    Aiuta.isAvailable.then((isAvailable) {
      setState(() {
        _isAiutaAvailable = isAvailable;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aiuta SDK example app'),
        ),
        body: Center(
          child: _isAiutaAvailable
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(fontSize: 20)),
                      ),
                      onPressed: () {
                        _aiuta.startTryonFlow(
                          product: AiutaProduct(
                            id: Env.SKU_ID,
                            title: "YOUR title",
                            imageUrls: [
                              "YOUR image 1",
                              "YOUR image 2",
                            ],
                            brand: "YOUR brand",
                          ),
                        );
                      },
                      child: const Text('Start Aiuta'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(fontSize: 20)),
                      ),
                      onPressed: () {
                        _aiuta.startHistoryFlow();
                      },
                      child: const Text('Show history'),
                    ),
                  ],
                )
              : const Text('Aiuta is not available'),
        ),
      ),
    );
  }
}
