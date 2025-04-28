import 'package:aiuta_flutter/models/images/aiuta_history_image.dart';
import 'package:flutter/foundation.dart';

/// The data provider for the generations history feature in the virtual try-on.
class AiutaTryOnGenerationsHistoryDataProvider {
  /// Stream of generated images.
  final ValueListenable<List<AiutaHistoryImage>> generatedImages;

  /// Callback to add generated images.
  final Future<void> Function(List<AiutaHistoryImage>, List<String>)
      addGeneratedImages;

  /// Callback to delete generated images.
  final Future<void> Function(List<AiutaHistoryImage>) deleteGeneratedImages;

  /// Creates an [AiutaTryOnGenerationsHistoryDataProvider] with the
  /// [generatedImages] list of users' generated images history,
  /// and [addGeneratedImages] and [deleteGeneratedImages] callbacks to
  /// add and delete images from the history.
  AiutaTryOnGenerationsHistoryDataProvider({
    required this.generatedImages,
    required this.addGeneratedImages,
    required this.deleteGeneratedImages,
  });
}
