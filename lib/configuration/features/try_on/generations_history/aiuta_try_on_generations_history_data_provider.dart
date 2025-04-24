import 'dart:async';

import 'package:aiuta_flutter/models/images/aiuta_history_image.dart';

class AiutaTryOnGenerationsHistoryDataProvider {
  /// Stream of generated images.
  final Stream<List<AiutaHistoryImage>> generatedImages;

  /// Callback to add generated images.
  final Future<void> Function(List<AiutaHistoryImage>, List<String>)
      addGeneratedImages;

  /// Callback to delete generated images.
  final Future<void> Function(List<AiutaHistoryImage>) deleteGeneratedImages;

  AiutaTryOnGenerationsHistoryDataProvider({
    required this.generatedImages,
    required this.addGeneratedImages,
    required this.deleteGeneratedImages,
  });
}
