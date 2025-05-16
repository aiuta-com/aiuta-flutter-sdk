import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_styles.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_data_provider.dart';

part 'aiuta_image_picker_uploads_history_feature.g.dart';

/// Configuration for the uploads history feature to allow users to select
/// one of the previously used images, with ability to delete them.
@JsonSerializable()
class AiutaImagePickerUploadsHistoryFeature {
  /// Strings used in the uploads history feature.
  final AiutaImagePickerUploadsHistoryStrings strings;

  /// Styles used in the uploads history feature.
  final AiutaImagePickerUploadsHistoryStyles styles;

  /// Data provider for the uploads history feature.
  final AiutaImagePickerUploadsHistoryDataProvider dataProvider;

  /// Creates an [AiutaImagePickerUploadsHistoryFeature] with [strings] and
  /// [styles] configuration, and an optional [dataProvider] to manage
  /// the uploads history by the host application.
  AiutaImagePickerUploadsHistoryFeature({
    required this.strings,
    required this.styles,
    required this.dataProvider,
  });

  // Internal json staff
  factory AiutaImagePickerUploadsHistoryFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryFeatureToJson(this);
}
