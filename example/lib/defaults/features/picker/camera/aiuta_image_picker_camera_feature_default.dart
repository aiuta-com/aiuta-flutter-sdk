import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ImagePickerCameraFeatureBuilder {
  AiutaImagePickerCameraFeature build() => AiutaImagePickerCameraFeature(
        icons: AiutaImagePickerCameraIconsCustom(
          camera24: AiutaIcon(path: "res/icons/ic_camera_24.png"),
        ),
        strings: AiutaImagePickerCameraStringsCustom(
          cameraButtonTakePhoto: "Take a photo",
          cameraPermissionTitle: "Camera permission",
          cameraPermissionDescription:
              "Please allow access to the camera in the application settings.",
          cameraPermissionButtonOpenSettings: "Settings",
        ),
      );
}
