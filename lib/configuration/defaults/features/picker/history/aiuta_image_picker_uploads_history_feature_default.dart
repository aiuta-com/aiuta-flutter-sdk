import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_feature.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_styles.dart';
import 'package:aiuta_flutter/models/images/aiuta_input_image.dart';
import 'package:flutter/cupertino.dart';

final class AiutaImagePickerUploadsHistoryFeatureDefaultBuilder {
  AiutaImagePickerUploadsHistoryFeature build({
    required bool isPredefinedModelAvailable,
  }) {
    return AiutaImagePickerUploadsHistoryFeature(
      strings: AiutaImagePickerUploadsHistoryStringsBuiltIn(
        isPredefinedModelAvailable: isPredefinedModelAvailable,
      ),
      styles: AiutaImagePickerUploadsHistoryStyles(
        changePhotoButtonStyle:
            AiutaImagePickerUploadsHistoryButtonStyle.blurred,
      ),
      dataProvider: AiutaImagePickerUploadsHistoryDataProviderBuiltIn(),
    );
  }
}
