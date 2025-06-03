// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_analytics_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiutaAnalyticsConfigureEvent _$AiutaAnalyticsConfigureEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsConfigureEvent(
      authType: $enumDecode(_$AiutaAnalyticsAuthTypeEnumMap, json['authType']),
      consentType: $enumDecodeNullable(
          _$AiutaAnalyticsConsentTypeEnumMap, json['consentType']),
      welcomeScreenFeatureEnabled: json['welcomeScreenFeatureEnabled'] as bool,
      onboardingFeatureEnabled: json['onboardingFeatureEnabled'] as bool,
      onboardingBestResultsPageFeatureEnabled:
          json['onboardingBestResultsPageFeatureEnabled'] as bool,
      imagePickerCameraFeatureEnabled:
          json['imagePickerCameraFeatureEnabled'] as bool,
      imagePickerPredefinedModelFeatureEnabled:
          json['imagePickerPredefinedModelFeatureEnabled'] as bool,
      imagePickerUploadsHistoryFeatureEnabled:
          json['imagePickerUploadsHistoryFeatureEnabled'] as bool,
      tryOnFitDisclaimerFeatureEnabled:
          json['tryOnFitDisclaimerFeatureEnabled'] as bool,
      tryOnFeedbackFeatureEnabled: json['tryOnFeedbackFeatureEnabled'] as bool,
      tryOnFeedbackOtherFeatureEnabled:
          json['tryOnFeedbackOtherFeatureEnabled'] as bool,
      tryOnGenerationsHistoryFeatureEnabled:
          json['tryOnGenerationsHistoryFeatureEnabled'] as bool,
      tryOnMultiItemFeatureEnabled:
          json['tryOnMultiItemFeatureEnabled'] as bool,
      tryOnWithOtherPhotoFeatureEnabled:
          json['tryOnWithOtherPhotoFeatureEnabled'] as bool,
      shareFeatureEnabled: json['shareFeatureEnabled'] as bool,
      shareWatermarkFeatureEnabled:
          json['shareWatermarkFeatureEnabled'] as bool,
      wishlistFeatureEnabled: json['wishlistFeatureEnabled'] as bool,
      pageId:
          $enumDecodeNullable(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String?,
    );

Map<String, dynamic> _$AiutaAnalyticsConfigureEventToJson(
        AiutaAnalyticsConfigureEvent instance) =>
    <String, dynamic>{
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId],
      'productId': instance.productId,
      'authType': _$AiutaAnalyticsAuthTypeEnumMap[instance.authType]!,
      'consentType': _$AiutaAnalyticsConsentTypeEnumMap[instance.consentType],
      'welcomeScreenFeatureEnabled': instance.welcomeScreenFeatureEnabled,
      'onboardingFeatureEnabled': instance.onboardingFeatureEnabled,
      'onboardingBestResultsPageFeatureEnabled':
          instance.onboardingBestResultsPageFeatureEnabled,
      'imagePickerCameraFeatureEnabled':
          instance.imagePickerCameraFeatureEnabled,
      'imagePickerPredefinedModelFeatureEnabled':
          instance.imagePickerPredefinedModelFeatureEnabled,
      'imagePickerUploadsHistoryFeatureEnabled':
          instance.imagePickerUploadsHistoryFeatureEnabled,
      'tryOnFitDisclaimerFeatureEnabled':
          instance.tryOnFitDisclaimerFeatureEnabled,
      'tryOnFeedbackFeatureEnabled': instance.tryOnFeedbackFeatureEnabled,
      'tryOnFeedbackOtherFeatureEnabled':
          instance.tryOnFeedbackOtherFeatureEnabled,
      'tryOnGenerationsHistoryFeatureEnabled':
          instance.tryOnGenerationsHistoryFeatureEnabled,
      'tryOnMultiItemFeatureEnabled': instance.tryOnMultiItemFeatureEnabled,
      'tryOnWithOtherPhotoFeatureEnabled':
          instance.tryOnWithOtherPhotoFeatureEnabled,
      'shareFeatureEnabled': instance.shareFeatureEnabled,
      'shareWatermarkFeatureEnabled': instance.shareWatermarkFeatureEnabled,
      'wishlistFeatureEnabled': instance.wishlistFeatureEnabled,
    };

const _$AiutaAnalyticsAuthTypeEnumMap = {
  AiutaAnalyticsAuthType.apiKey: 'apiKey',
  AiutaAnalyticsAuthType.jwt: 'jwt',
};

const _$AiutaAnalyticsConsentTypeEnumMap = {
  AiutaAnalyticsConsentType.embeddedIntoOnboarding: 'embeddedIntoOnboarding',
  AiutaAnalyticsConsentType.standaloneOnboardingPage:
      'standaloneOnboardingPage',
  AiutaAnalyticsConsentType.standaloneImagePickerPage:
      'standaloneImagePickerPage',
};

const _$AiutaAnalyticsPageIdEnumMap = {
  AiutaAnalyticsPageId.welcome: 'welcome',
  AiutaAnalyticsPageId.howItWorks: 'howItWorks',
  AiutaAnalyticsPageId.bestResults: 'bestResults',
  AiutaAnalyticsPageId.consent: 'consent',
  AiutaAnalyticsPageId.imagePicker: 'imagePicker',
  AiutaAnalyticsPageId.loading: 'loading',
  AiutaAnalyticsPageId.results: 'results',
  AiutaAnalyticsPageId.history: 'history',
};

AiutaAnalyticsSessionEvent _$AiutaAnalyticsSessionEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsSessionEvent(
      flow: $enumDecode(_$AiutaAnalyticsFlowTypeEnumMap, json['flow']),
      pageId:
          $enumDecodeNullable(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String?,
    );

Map<String, dynamic> _$AiutaAnalyticsSessionEventToJson(
        AiutaAnalyticsSessionEvent instance) =>
    <String, dynamic>{
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId],
      'productId': instance.productId,
      'flow': _$AiutaAnalyticsFlowTypeEnumMap[instance.flow]!,
    };

const _$AiutaAnalyticsFlowTypeEnumMap = {
  AiutaAnalyticsFlowType.tryOn: 'tryOn',
  AiutaAnalyticsFlowType.history: 'history',
};

AiutaAnalyticsPageEvent _$AiutaAnalyticsPageEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsPageEvent(
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$AiutaAnalyticsPageEventToJson(
        AiutaAnalyticsPageEvent instance) =>
    <String, dynamic>{
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
    };

AiutaAnalyticsOnboardingEvent _$AiutaAnalyticsOnboardingEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsOnboardingEvent(
      event: $enumDecode(
          _$AiutaAnalyticsOnboardingEventTypeEnumMap, json['event']),
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
      consentIds: (json['consentIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AiutaAnalyticsOnboardingEventToJson(
        AiutaAnalyticsOnboardingEvent instance) =>
    <String, dynamic>{
      'event': _$AiutaAnalyticsOnboardingEventTypeEnumMap[instance.event]!,
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
      'consentIds': instance.consentIds,
    };

const _$AiutaAnalyticsOnboardingEventTypeEnumMap = {
  AiutaAnalyticsOnboardingEventType.welcomeStartClicked: 'welcomeStartClicked',
  AiutaAnalyticsOnboardingEventType.consentGiven: 'consentGiven',
  AiutaAnalyticsOnboardingEventType.onboardingFinished: 'onboardingFinished',
};

AiutaAnalyticsPickerEvent _$AiutaAnalyticsPickerEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsPickerEvent(
      event: $enumDecode(_$AiutaAnalyticsPickerEventTypeEnumMap, json['event']),
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$AiutaAnalyticsPickerEventToJson(
        AiutaAnalyticsPickerEvent instance) =>
    <String, dynamic>{
      'event': _$AiutaAnalyticsPickerEventTypeEnumMap[instance.event]!,
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
    };

const _$AiutaAnalyticsPickerEventTypeEnumMap = {
  AiutaAnalyticsPickerEventType.cameraOpened: 'cameraOpened',
  AiutaAnalyticsPickerEventType.newPhotoTaken: 'newPhotoTaken',
  AiutaAnalyticsPickerEventType.photoGalleryOpened: 'photoGalleryOpened',
  AiutaAnalyticsPickerEventType.galleryPhotoSelected: 'galleryPhotoSelected',
  AiutaAnalyticsPickerEventType.uploadsHistoryOpened: 'uploadsHistoryOpened',
  AiutaAnalyticsPickerEventType.uploadedPhotoSelected: 'uploadedPhotoSelected',
  AiutaAnalyticsPickerEventType.uploadedPhotoDeleted: 'uploadedPhotoDeleted',
  AiutaAnalyticsPickerEventType.predefinedModelsOpened:
      'predefinedModelsOpened',
  AiutaAnalyticsPickerEventType.predefinedModelSelected:
      'predefinedModelSelected',
};

AiutaAnalyticsExitEvent _$AiutaAnalyticsExitEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsExitEvent(
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$AiutaAnalyticsExitEventToJson(
        AiutaAnalyticsExitEvent instance) =>
    <String, dynamic>{
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
    };

AiutaAnalyticsTryOnEvent _$AiutaAnalyticsTryOnEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsTryOnEvent(
      event: $enumDecode(_$AiutaAnalyticsTryOnEventTypeEnumMap, json['event']),
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
      errorType: $enumDecodeNullable(
          _$AiutaAnalyticsTryOnEventErrorTypeEnumMap, json['errorType']),
      errorMessage: json['errorMessage'] as String?,
      uploadDuration: (json['uploadDuration'] as num?)?.toDouble(),
      tryOnDuration: (json['tryOnDuration'] as num?)?.toDouble(),
      downloadDuration: (json['downloadDuration'] as num?)?.toDouble(),
      totalDuration: (json['totalDuration'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AiutaAnalyticsTryOnEventToJson(
        AiutaAnalyticsTryOnEvent instance) =>
    <String, dynamic>{
      'event': _$AiutaAnalyticsTryOnEventTypeEnumMap[instance.event]!,
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
      'errorType':
          _$AiutaAnalyticsTryOnEventErrorTypeEnumMap[instance.errorType],
      'errorMessage': instance.errorMessage,
      'uploadDuration': instance.uploadDuration,
      'tryOnDuration': instance.tryOnDuration,
      'downloadDuration': instance.downloadDuration,
      'totalDuration': instance.totalDuration,
    };

const _$AiutaAnalyticsTryOnEventTypeEnumMap = {
  AiutaAnalyticsTryOnEventType.photoUploaded: 'photoUploaded',
  AiutaAnalyticsTryOnEventType.tryOnStarted: 'tryOnStarted',
  AiutaAnalyticsTryOnEventType.tryOnFinished: 'tryOnFinished',
  AiutaAnalyticsTryOnEventType.tryOnAborted: 'tryOnAborted',
  AiutaAnalyticsTryOnEventType.tryOnError: 'tryOnError',
};

const _$AiutaAnalyticsTryOnEventErrorTypeEnumMap = {
  AiutaAnalyticsTryOnEventErrorType.preparePhotoFailed: 'preparePhotoFailed',
  AiutaAnalyticsTryOnEventErrorType.uploadPhotoFailed: 'uploadPhotoFailed',
  AiutaAnalyticsTryOnEventErrorType.authorizationFailed: 'authorizationFailed',
  AiutaAnalyticsTryOnEventErrorType.requestOperationFailed:
      'requestOperationFailed',
  AiutaAnalyticsTryOnEventErrorType.startOperationFailed:
      'startOperationFailed',
  AiutaAnalyticsTryOnEventErrorType.operationFailed: 'operationFailed',
  AiutaAnalyticsTryOnEventErrorType.operationAborted: 'operationAborted',
  AiutaAnalyticsTryOnEventErrorType.operationTimeout: 'operationTimeout',
  AiutaAnalyticsTryOnEventErrorType.operationEmptyResults:
      'operationEmptyResults',
  AiutaAnalyticsTryOnEventErrorType.downloadResultFailed:
      'downloadResultFailed',
  AiutaAnalyticsTryOnEventErrorType.internalSdkError: 'internalSdkError',
};

AiutaAnalyticsResultsEvent _$AiutaAnalyticsResultsEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsResultsEvent(
      event:
          $enumDecode(_$AiutaAnalyticsResultsEventTypeEnumMap, json['event']),
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$AiutaAnalyticsResultsEventToJson(
        AiutaAnalyticsResultsEvent instance) =>
    <String, dynamic>{
      'event': _$AiutaAnalyticsResultsEventTypeEnumMap[instance.event]!,
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
    };

const _$AiutaAnalyticsResultsEventTypeEnumMap = {
  AiutaAnalyticsResultsEventType.resultShared: 'resultShared',
  AiutaAnalyticsResultsEventType.productAddToWishlist: 'productAddToWishlist',
  AiutaAnalyticsResultsEventType.productAddToCart: 'productAddToCart',
  AiutaAnalyticsResultsEventType.pickOtherPhoto: 'pickOtherPhoto',
};

AiutaAnalyticsFeedbackEvent _$AiutaAnalyticsFeedbackEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsFeedbackEvent(
      event:
          $enumDecode(_$AiutaAnalyticsFeedbackEventTypeEnumMap, json['event']),
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
      negativeFeedbackOptionIndex:
          (json['negativeFeedbackOptionIndex'] as num?)?.toInt(),
      negativeFeedbackText: json['negativeFeedbackText'] as String?,
    );

Map<String, dynamic> _$AiutaAnalyticsFeedbackEventToJson(
        AiutaAnalyticsFeedbackEvent instance) =>
    <String, dynamic>{
      'event': _$AiutaAnalyticsFeedbackEventTypeEnumMap[instance.event]!,
      'negativeFeedbackOptionIndex': instance.negativeFeedbackOptionIndex,
      'negativeFeedbackText': instance.negativeFeedbackText,
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
    };

const _$AiutaAnalyticsFeedbackEventTypeEnumMap = {
  AiutaAnalyticsFeedbackEventType.positive: 'positive',
  AiutaAnalyticsFeedbackEventType.negative: 'negative',
};

AiutaAnalyticsHistoryEvent _$AiutaAnalyticsHistoryEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsHistoryEvent(
      event:
          $enumDecode(_$AiutaAnalyticsHistoryEventTypeEnumMap, json['event']),
      pageId: $enumDecode(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$AiutaAnalyticsHistoryEventToJson(
        AiutaAnalyticsHistoryEvent instance) =>
    <String, dynamic>{
      'event': _$AiutaAnalyticsHistoryEventTypeEnumMap[instance.event]!,
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId]!,
      'productId': instance.productId,
    };

const _$AiutaAnalyticsHistoryEventTypeEnumMap = {
  AiutaAnalyticsHistoryEventType.generatedImageShared: 'generatedImageShared',
  AiutaAnalyticsHistoryEventType.generatedImageDeleted: 'generatedImageDeleted',
};

AiutaAnalyticsShareEvent _$AiutaAnalyticsShareEventFromJson(
        Map<String, dynamic> json) =>
    AiutaAnalyticsShareEvent(
      event: $enumDecode(_$AiutaAnalyticsShareEventTypeEnumMap, json['event']),
      targetId: json['targetId'] as String?,
      pageId:
          $enumDecodeNullable(_$AiutaAnalyticsPageIdEnumMap, json['pageId']),
      productId: json['productId'] as String?,
    );

Map<String, dynamic> _$AiutaAnalyticsShareEventToJson(
        AiutaAnalyticsShareEvent instance) =>
    <String, dynamic>{
      'pageId': _$AiutaAnalyticsPageIdEnumMap[instance.pageId],
      'productId': instance.productId,
      'event': _$AiutaAnalyticsShareEventTypeEnumMap[instance.event]!,
      'targetId': instance.targetId,
    };

const _$AiutaAnalyticsShareEventTypeEnumMap = {
  AiutaAnalyticsShareEventType.initiated: 'initiated',
  AiutaAnalyticsShareEventType.succeeded: 'succeeded',
  AiutaAnalyticsShareEventType.canceled: 'canceled',
  AiutaAnalyticsShareEventType.failed: 'failed',
  AiutaAnalyticsShareEventType.screenshot: 'screenshot',
};
