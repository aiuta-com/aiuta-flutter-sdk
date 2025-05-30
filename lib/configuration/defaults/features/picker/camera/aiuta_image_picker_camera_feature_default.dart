import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class AiutaImagePickerCameraFeatureDefaultBuilder {
  AiutaImagePickerCameraFeature build() => AiutaImagePickerCameraFeature(
        icons: AiutaImagePickerCameraIconsBuiltIn(),
        strings: AiutaImagePickerCameraStringsBuiltIn(),
      );
}
