import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_strings.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_styles.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/uploads_history/aiuta_image_picker_uploads_history_data_provider.dart';

part 'aiuta_image_picker_uploads_history_feature.g.dart';

@JsonSerializable()
class AiutaImagePickerUploadsHistoryFeature {
  /// Strings used in the uploads history feature.
  final AiutaImagePickerUploadsHistoryStrings strings;

  /// Styles used in the uploads history feature.
  final AiutaImagePickerUploadsHistoryStyles styles;

  /// Data provider for the uploads history feature (nullable).
  @JsonKey(toJson: toNull, fromJson: toNull, includeIfNull: false)
  final AiutaImagePickerUploadsHistoryDataProvider? dataProvider;

  AiutaImagePickerUploadsHistoryFeature({
    required this.strings,
    required this.styles,
    this.dataProvider,
  });

  /// Create a new instance of AiutaImagePickerUploadsHistoryFeature from a json map.
  factory AiutaImagePickerUploadsHistoryFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerUploadsHistoryFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerUploadsHistoryFeatureToJson(this);
}
