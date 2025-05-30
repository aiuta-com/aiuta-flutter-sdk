import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/photo_gallery/aiuta_image_picker_photo_gallery_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class AiutaImagePickerPhotoGalleryFeatureDefaultBuilder {
  AiutaImagePickerPhotoGalleryFeature build() =>
      AiutaImagePickerPhotoGalleryFeature(
        icons: AiutaImagePickerPhotoGalleryIconsBuiltIn(),
        strings: AiutaImagePickerPhotoGalleryStringsBuiltIn(),
      );
}
