import 'package:aiuta_flutter/configuration/features/base/aiuta_data_provider_type.dart';
import 'package:aiuta_flutter/models/images/aiuta_input_image.dart';
import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_uploads_history_data_provider.g.dart';

/// Data provider for the uploads history feature.
sealed class AiutaImagePickerUploadsHistoryDataProvider {
  /// The type of the data provider, indicating whether it is built-in or custom.
  AiutaDataProviderType type;

  /// Constructs an [AiutaImagePickerUploadsHistoryDataProvider] with the specified [type].
  AiutaImagePickerUploadsHistoryDataProvider(this.type);

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryDataProvider.fromJson(
      Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerUploadsHistoryDataProviderBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerUploadsHistoryDataProviderCustom.fromJson(json);
      default:
        throw Exception('Unknown uploads history data provider type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerUploadsHistoryDataProvider`.
///
/// This class represents the default, built-in data provider for the uploads
/// history feature. It does not require any custom implementation and uses
/// predefined behavior.
@JsonSerializable()
class AiutaImagePickerUploadsHistoryDataProviderBuiltIn
    extends AiutaImagePickerUploadsHistoryDataProvider {
  /// Creates an instance of the built-in uploads history data provider.
  AiutaImagePickerUploadsHistoryDataProviderBuiltIn()
      : super(AiutaDataProviderType.builtIn);

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryDataProviderBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryDataProviderBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryDataProviderBuiltInToJson(this);
}

@JsonSerializable()
class AiutaImagePickerUploadsHistoryDataProviderCustom
    extends AiutaImagePickerUploadsHistoryDataProvider {
  /// Uploaded images history list.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final ValueListenable<List<AiutaInputImage>> uploadedImages;

  /// Callback to add uploaded images.
  /// The newly added images should be added to the beginning of the
  /// [uploadedImages] list.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final Future<void> Function(List<AiutaInputImage>) addUploadedImages;

  /// Callback to delete uploaded images.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final Future<void> Function(List<AiutaInputImage>) deleteUploadedImages;

  /// Callback to select an uploaded image for reuse.
  /// When user selects an image from the history it should be moved to
  /// the beginning of the [uploadedImages] list.
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final Future<void> Function(AiutaInputImage) selectUploadedImage;

  /// Creates an [AiutaImagePickerUploadsHistoryDataProviderCustom] with the
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
  AiutaImagePickerUploadsHistoryDataProviderCustom({
    required this.uploadedImages,
    required this.addUploadedImages,
    required this.deleteUploadedImages,
    required this.selectUploadedImage,
  }) : super(AiutaDataProviderType.custom);

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryDataProviderCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryDataProviderCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryDataProviderCustomToJson(this);
}
