import 'package:aiuta_flutter/aiuta_flutter.dart';
import 'package:aiuta_flutter/models/product/aiuta_product.dart';
import 'package:aiutasdk_example/configuration/builtin_configuration.dart';
import 'package:aiutasdk_example/configuration/custom_configuration.dart';
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
  bool _useCustomConfig = false;

  late final _builtInConfig = buildBuiltInConfiguration(apiKey: Env.API_KEY);
  late final _customConfig = buildCustomConfiguration(apiKey: Env.API_KEY);

  Aiuta _rebuildAiuta() => Aiuta(
        configuration: _useCustomConfig ? _customConfig : _builtInConfig,
      );

  late Aiuta _aiuta = _rebuildAiuta();

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
          title: Text(
            _useCustomConfig ? 'Aiuta SDK (Custom)' : 'Aiuta SDK (Built-in)',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Switch(
                value: _useCustomConfig,
                onChanged: (value) {
                  setState(() {
                    _useCustomConfig = value;
                    _aiuta = _rebuildAiuta();
                  });
                },
              ),
            ),
          ],
        ),
        body: Center(
          child: _isAiutaAvailable
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        _useCustomConfig
                            ? 'Custom theme: indigo palette,\nsquare shapes, in-memory providers'
                            : 'Default theme: built-in UI,\nbuilt-in data providers',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            WidgetStateProperty.all<Color>(Colors.blue),
                        textStyle: WidgetStateProperty.all<TextStyle>(
                            const TextStyle(fontSize: 20)),
                      ),
                      onPressed: () {
                        _aiuta.startTryonFlow(
                          product: AiutaProduct(
                            id: Env.SKU_ID_1,
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
                            WidgetStateProperty.all<Color>(Colors.blue),
                        textStyle: WidgetStateProperty.all<TextStyle>(
                            const TextStyle(fontSize: 20)),
                      ),
                      onPressed: () {
                        _aiuta.startOutfitTryonFlow(
                          products: [
                            AiutaProduct(
                              id: Env.SKU_ID_1,
                              title: "YOUR title 1",
                              imageUrls: [
                                "YOUR image 1",
                                "YOUR image 2",
                              ],
                              brand: "YOUR brand",
                            ),
                            AiutaProduct(
                              id: Env.SKU_ID_2,
                              title: "YOUR title 2",
                              imageUrls: [
                                "YOUR image 3",
                                "YOUR image 4",
                              ],
                              brand: "YOUR brand",
                            ),
                          ],
                        );
                      },
                      child: const Text('Start Aiuta with outfit'),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            WidgetStateProperty.all<Color>(Colors.blue),
                        textStyle: WidgetStateProperty.all<TextStyle>(
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
