import 'dart:async';

import 'package:aiuta_flutter/models/images/aiuta_history_image.dart';

class AiutaImagePickerUploadsHistoryDataProvider {
  /// Stream of uploaded images.
  final Stream<List<AiutaHistoryImage>> uploadedImages;

  /// Callback to add uploaded images.
  final Future<void> Function(List<AiutaHistoryImage>) addUploadedImages;

  /// Callback to delete uploaded images.
  final Future<void> Function(List<AiutaHistoryImage>) deleteUploadedImages;

  /// Callback to select an uploaded image.
  final Future<void> Function(AiutaHistoryImage) selectUploadedImage;

  AiutaImagePickerUploadsHistoryDataProvider({
    required this.uploadedImages,
    required this.addUploadedImages,
    required this.deleteUploadedImages,
    required this.selectUploadedImage,
  });
}
