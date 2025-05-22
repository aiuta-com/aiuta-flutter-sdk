import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_styles.dart';
import 'package:aiuta_flutter/models/images/aiuta_input_image.dart';
import 'package:flutter/cupertino.dart';

final class ImagePickerUploadsHistoryFeatureBuilder {
  final bool isPredefinedModelAvailable;

  ImagePickerUploadsHistoryFeatureBuilder(
      {required this.isPredefinedModelAvailable});

  AiutaImagePickerUploadsHistoryFeature build() {
    final uploadedImagesNotifier = ValueNotifier<List<AiutaInputImage>>([]);

    return AiutaImagePickerUploadsHistoryFeature(
      strings: AiutaImagePickerUploadsHistoryStrings(
        uploadsHistoryTitle: "Previously used photos",
        uploadsHistoryButtonNewPhoto:
            isPredefinedModelAvailable ? "+ New photo or model" : "+ New photo",
        uploadsHistoryButtonChangePhoto: "Change photo",
      ),
      styles: AiutaImagePickerUploadsHistoryStyles(
        changePhotoButtonStyle:
            AiutaImagePickerUploadsHistoryButtonStyle.blurred,
      ),
      dataProvider: AiutaImagePickerUploadsHistoryDataProviderCustom(
        uploadedImages: uploadedImagesNotifier,
        addUploadedImages: (newImages) async {
          uploadedImagesNotifier.value = [
            ...newImages,
            ...uploadedImagesNotifier.value
          ];
        },
        deleteUploadedImages: (images) async {
          // Just for check - add delay
          await Future.delayed(const Duration(seconds: 2));
          var uploaded =
              List<AiutaInputImage>.from(uploadedImagesNotifier.value);
          images.forEach((image) {
            uploaded.removeWhere((test) {
              return test.id == image.id;
            });
          });
          uploadedImagesNotifier.value = uploaded;
        },
        selectUploadedImage: (image) async {
          var uploaded =
              List<AiutaInputImage>.from(uploadedImagesNotifier.value);
          uploaded.removeWhere((test) {
            return test.id == image.id;
          });
          uploaded.insert(0, image);
          uploadedImagesNotifier.value = uploaded;
        },
      ),
    );
  }
}
