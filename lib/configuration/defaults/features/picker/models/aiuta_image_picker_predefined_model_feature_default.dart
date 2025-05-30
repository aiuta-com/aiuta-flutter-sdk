import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_strings.dart';

final class AiutaImagePickerPredefinedModelFeatureDefaultBuilder {
  AiutaImagePickerPredefinedModelFeature build() =>
      AiutaImagePickerPredefinedModelFeature(
        icons: AiutaImagePickerPredefinedModelIconsBuiltIn(),
        strings: AiutaImagePickerPredefinedModelStringsBuiltIn(),
      );
}
