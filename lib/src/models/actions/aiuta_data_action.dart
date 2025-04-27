import 'package:aiuta_flutter/src/models/actions/aiuta_data_action_type.dart';
import 'package:aiuta_flutter/models/images/aiuta_history_image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_data_action.g.dart';

sealed class AiutaDataAction {
  AiutaDataActionType type;

  AiutaDataAction(this.type);

  factory AiutaDataAction.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'obtainUserConsentsIds':
        return ObtainUserConsentsIdsAction.fromJson(json);
      case 'addUploadedImages':
        return AddUploadedImagesAction.fromJson(json);
      case 'selectUploadedImage':
        return SelectUploadedImageAction.fromJson(json);
      case 'deleteUploadedImages':
        return DeleteUploadedImagesAction.fromJson(json);
      case 'addGeneratedImages':
        return AddGeneratedImagesAction.fromJson(json);
      case 'deleteGeneratedImages':
        return DeleteGeneratedImagesAction.fromJson(json);
      default:
        throw Exception('Unknown action type');
    }
  }

  Map<String, dynamic> toJson();
}

// Consents

@JsonSerializable()
class ObtainUserConsentsIdsAction extends AiutaDataAction {
  final List<String> consentIds;

  ObtainUserConsentsIdsAction({
    required this.consentIds,
  }) : super(AiutaDataActionType.obtainUserConsentsIds);

  factory ObtainUserConsentsIdsAction.fromJson(Map<String, dynamic> json) =>
      _$ObtainUserConsentsIdsActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ObtainUserConsentsIdsActionToJson(this);
}

// Uploaded images

@JsonSerializable()
class AddUploadedImagesAction extends AiutaDataAction {
  final List<AiutaHistoryImage> uploadedImages;

  AddUploadedImagesAction({
    required this.uploadedImages,
  }) : super(AiutaDataActionType.addUploadedImages);

  // Json staff
  factory AddUploadedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$AddUploadedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddUploadedImagesActionToJson(this);
}

@JsonSerializable()
class SelectUploadedImageAction extends AiutaDataAction {
  final AiutaHistoryImage uploadedImage;

  SelectUploadedImageAction({
    required this.uploadedImage,
  }) : super(AiutaDataActionType.selectUploadedImage);

  // Json staff
  factory SelectUploadedImageAction.fromJson(Map<String, dynamic> json) =>
      _$SelectUploadedImageActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SelectUploadedImageActionToJson(this);
}

@JsonSerializable()
class DeleteUploadedImagesAction extends AiutaDataAction {
  final List<AiutaHistoryImage> uploadedImages;

  DeleteUploadedImagesAction({
    required this.uploadedImages,
  }) : super(AiutaDataActionType.deleteUploadedImages);

  // Json staff
  factory DeleteUploadedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$DeleteUploadedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteUploadedImagesActionToJson(this);
}

// Generated images

@JsonSerializable()
class AddGeneratedImagesAction extends AiutaDataAction {
  final String productId;
  final List<AiutaHistoryImage> generatedImages;

  AddGeneratedImagesAction({
    required this.productId,
    required this.generatedImages,
  }) : super(AiutaDataActionType.addGeneratedImages);

  // Json staff
  factory AddGeneratedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$AddGeneratedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddGeneratedImagesActionToJson(this);
}

@JsonSerializable()
class DeleteGeneratedImagesAction extends AiutaDataAction {
  final List<AiutaHistoryImage> generatedImages;

  DeleteGeneratedImagesAction({
    required this.generatedImages,
  }) : super(AiutaDataActionType.deleteGeneratedImages);

  // Json staff
  factory DeleteGeneratedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$DeleteGeneratedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteGeneratedImagesActionToJson(this);
}
