import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ImagePickerPhotoGalleryFeatureBuilder {
  AiutaImagePickerPhotoGalleryFeature build() =>
      AiutaImagePickerPhotoGalleryFeature(
        icons: AiutaImagePickerPhotoGalleryIconsCustom(
          gallery24: AiutaIcon(path: "res/icons/ic_gallery_24.png"),
        ),
        strings: AiutaImagePickerPhotoGalleryStringsCustom(
          galleryButtonSelectPhoto: "Choose from library",
        ),
      );
}
