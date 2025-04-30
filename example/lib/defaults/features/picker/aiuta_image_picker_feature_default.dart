import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_images.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/aiuta_image_picker_strings.dart';
import 'package:aiutasdk_example/defaults/features/picker/gallery/aiuta_image_picker_photo_gallery_feature_default.dart';

final class ImagePickerFeatureBuilder {
  AiutaImagePickerFeature build() => AiutaImagePickerFeature(
        camera: null,
        photoGallery: ImagePickerPhotoGalleryFeatureBuilder().build(),
        predefinedModels: null,
        uploadsHistory: null,
        images: AiutaImagePickerImages(
          examples: [
            "res/images/selector_empty_small_image_1.png",
            "res/images/onboarding_good_image_1.png",
          ],
        ),
        strings: AiutaImagePickerStrings(
          imagePickerTitleEmpty: "Upload a photo of you",
          imagePickerDescriptionEmpty:
              "Select a photo where you are standing straight and clearly visible",
          imagePickerButtonUploadImage: "Upload a photo",
        ),
      );
}
