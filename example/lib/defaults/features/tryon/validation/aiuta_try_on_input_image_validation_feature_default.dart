import 'package:aiuta_flutter/configuration/features/try_on/input_image_validation/aiuta_try_on_input_image_validation_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/input_image_validation/aiuta_try_on_input_image_validation_strings.dart';

final class TryOnInputImageValidationFeatureBuilder {
  AiutaTryOnInputImageValidationFeature build() =>
      AiutaTryOnInputImageValidationFeature(
        strings: AiutaTryOnInputImageValidationStrings(
          invalidInputImageDescription:
              "We couldn’t detect anyone in this photo",
          invalidInputImageChangePhotoButton: "Change photo",
        ),
      );
}
