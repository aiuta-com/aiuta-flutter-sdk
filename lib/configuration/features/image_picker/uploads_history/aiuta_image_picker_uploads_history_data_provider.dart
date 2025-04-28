import 'package:aiuta_flutter/models/images/aiuta_history_image.dart';
import 'package:flutter/foundation.dart';

/// Data provider for the uploads history feature.
class AiutaImagePickerUploadsHistoryDataProvider {
  /// Uploaded images history list.
  final ValueListenable<List<AiutaHistoryImage>> uploadedImages;

  /// Callback to add uploaded images.
  /// The newly added images should be added to the beginning of the
  /// [uploadedImages] list.
  final Future<void> Function(List<AiutaHistoryImage>) addUploadedImages;

  /// Callback to delete uploaded images.
  final Future<void> Function(List<AiutaHistoryImage>) deleteUploadedImages;

  /// Callback to select an uploaded image for reuse.
  /// When user selects an image from the history it should be moved to
  /// the beginning of the [uploadedImages] list.
  final Future<void> Function(AiutaHistoryImage) selectUploadedImage;

  /// Creates an [AiutaImagePickerUploadsHistoryDataProvider] with the
  /// required [uploadedImages] list that will be displayed in exact order
  /// as provided, a required [addUploadedImages] callback to add
  /// images to the history, a required [deleteUploadedImages] callback
  /// when the user wants to delete images from the history, and a required
  /// [selectUploadedImage] callback when the user selects an image from
  /// the history to reuse it.
  ///
  /// When user selects an image from the history, this image passed into the
  /// [selectUploadedImage] callback should be moved to the beginning of the
  /// [uploadedImages] list.
  ///
  /// The newly added images should be added to the beginning of the
  /// [uploadedImages] list.
  AiutaImagePickerUploadsHistoryDataProvider({
    required this.uploadedImages,
    required this.addUploadedImages,
    required this.deleteUploadedImages,
    required this.selectUploadedImage,
  });
}
