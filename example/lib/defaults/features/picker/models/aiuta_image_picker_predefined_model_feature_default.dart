import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/predefined_model/aiuta_image_picker_predefined_model_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ImagePickerPredefinedModelFeatureBuilder {
  AiutaImagePickerPredefinedModelFeature build() =>
      AiutaImagePickerPredefinedModelFeature(
        icons: AiutaImagePickerPredefinedModelIcons(
          selectModels24: AiutaIcon(path: "res/icons/ic_select_model_24.png"),
        ),
        strings: AiutaImagePickerPredefinedModelStringsCustom(
          predefinedModelPageTitle: "Select your model",
          predefinedModelOr: "Or",
          predefinedModelErrorEmptyModelsList: "The models list is empty",
          predefinedModelCategories: {
            "woman": "Woman",
            "man": "Man",
          },
        ),
      );
}
