import 'package:aiuta_flutter/models/images/aiuta_generated_image.dart';
import 'package:aiuta_flutter/models/images/aiuta_input_image.dart';
import 'package:aiuta_flutter/src/models/actions/aiuta_data_action_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_data_action.g.dart';

sealed class AiutaDataAction {
  AiutaDataActionType type;
  String id = "";

  AiutaDataAction(this.type);

  factory AiutaDataAction.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'completeOnboarding':
        return CompleteOnboardingAction.fromJson(json);
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
      case 'getShareText':
        return GetShareTextAction.fromJson(json);
      default:
        throw Exception('Unknown action type');
    }
  }

  Map<String, dynamic> toJson();
}

// Onboarding

@JsonSerializable()
class CompleteOnboardingAction extends AiutaDataAction {
  CompleteOnboardingAction() : super(AiutaDataActionType.completeOnboarding);

  factory CompleteOnboardingAction.fromJson(Map<String, dynamic> json) =>
      _$CompleteOnboardingActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CompleteOnboardingActionToJson(this);
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
  final List<AiutaInputImage> uploadedImages;

  AddUploadedImagesAction({
    required this.uploadedImages,
  }) : super(AiutaDataActionType.addUploadedImages);

  factory AddUploadedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$AddUploadedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddUploadedImagesActionToJson(this);
}

@JsonSerializable()
class SelectUploadedImageAction extends AiutaDataAction {
  final AiutaInputImage uploadedImage;

  SelectUploadedImageAction({
    required this.uploadedImage,
  }) : super(AiutaDataActionType.selectUploadedImage);

  factory SelectUploadedImageAction.fromJson(Map<String, dynamic> json) =>
      _$SelectUploadedImageActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SelectUploadedImageActionToJson(this);
}

@JsonSerializable()
class DeleteUploadedImagesAction extends AiutaDataAction {
  final List<AiutaInputImage> uploadedImages;

  DeleteUploadedImagesAction({
    required this.uploadedImages,
  }) : super(AiutaDataActionType.deleteUploadedImages);

  factory DeleteUploadedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$DeleteUploadedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteUploadedImagesActionToJson(this);
}

// Generated images

@JsonSerializable()
class AddGeneratedImagesAction extends AiutaDataAction {
  final List<String> productIds;
  final List<AiutaGeneratedImage> generatedImages;

  AddGeneratedImagesAction({
    required this.productIds,
    required this.generatedImages,
  }) : super(AiutaDataActionType.addGeneratedImages);

  factory AddGeneratedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$AddGeneratedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddGeneratedImagesActionToJson(this);
}

@JsonSerializable()
class DeleteGeneratedImagesAction extends AiutaDataAction {
  final List<AiutaGeneratedImage> generatedImages;

  DeleteGeneratedImagesAction({
    required this.generatedImages,
  }) : super(AiutaDataActionType.deleteGeneratedImages);

  factory DeleteGeneratedImagesAction.fromJson(Map<String, dynamic> json) =>
      _$DeleteGeneratedImagesActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeleteGeneratedImagesActionToJson(this);
}

// Share text

@JsonSerializable()
class GetShareTextAction extends AiutaDataAction {
  final List<String> productIds;

  GetShareTextAction({
    required this.productIds,
  }) : super(AiutaDataActionType.getShareText);

  factory GetShareTextAction.fromJson(Map<String, dynamic> json) =>
      _$GetShareTextActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GetShareTextActionToJson(this);
}
