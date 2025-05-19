// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aiuta_analytics_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
