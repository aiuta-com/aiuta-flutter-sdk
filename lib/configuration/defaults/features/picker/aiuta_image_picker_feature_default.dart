import 'package:aiuta_flutter/configuration/defaults/features/picker/camera/aiuta_image_picker_camera_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/picker/gallery/aiuta_image_picker_photo_gallery_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/picker/history/aiuta_image_picker_uploads_history_feature_default.dart';
import 'package:aiuta_flutter/configuration/defaults/features/picker/models/aiuta_image_picker_predefined_model_feature_default.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_images.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_strings.dart';

final class AiutaImagePickerFeatureDefaultBuilder {
  AiutaImagePickerFeature build() => AiutaImagePickerFeature(
        camera: AiutaImagePickerCameraFeatureDefaultBuilder().build(),
        photoGallery:
            AiutaImagePickerPhotoGalleryFeatureDefaultBuilder().build(),
        predefinedModels:
            AiutaImagePickerPredefinedModelFeatureDefaultBuilder().build(),
        uploadsHistory: AiutaImagePickerUploadsHistoryFeatureDefaultBuilder()
            .build(
                isPredefinedModelAvailable:
                    true // Assuming predefined model is available
                ),
        images: AiutaImagePickerImagesBuiltIn(),
        strings: AiutaImagePickerStringsBuiltIn(),
      );
}
