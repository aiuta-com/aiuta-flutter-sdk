import 'package:aiuta_flutter/models/analytics/aiuta_analytics_auth_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_consent_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_flow_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_onboarding_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_page_id.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_feedback_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_history_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_picker_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_results_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_share_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_tryon_event_error_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_tryon_event_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_analytics_event.g.dart';

/// Base class for all analytic events.
sealed class AiutaAnalyticsEvent {
  /// Type of the analytic event.
  final AiutaAnalyticsEventType type;

  /// Id of the page.
  final AiutaAnalyticsPageId? pageId;

  /// Id of the product that the user interacts with.
  /// Matches the id of either the product which is passed to the SDK by starting try-on
  final String? productId;

  /// Creates an analytic event.
  AiutaAnalyticsEvent({
    required this.type,
    this.pageId,
    this.productId,
  });

  // Json staff
  factory AiutaAnalyticsEvent.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'configure':
        return AiutaAnalyticsConfigureEvent.fromJson(json);
      case 'session':
        return AiutaAnalyticsSessionEvent.fromJson(json);
      case 'page':
        return AiutaAnalyticsPageEvent.fromJson(json);
      case 'onboarding':
        return AiutaAnalyticsOnboardingEvent.fromJson(json);
      case 'picker':
        return AiutaAnalyticsPickerEvent.fromJson(json);
      case 'exit':
        return AiutaAnalyticsExitEvent.fromJson(json);
      case 'tryOn':
        return AiutaAnalyticsTryOnEvent.fromJson(json);
      case 'results':
        return AiutaAnalyticsResultsEvent.fromJson(json);
      case 'feedback':
        return AiutaAnalyticsFeedbackEvent.fromJson(json);
      case 'history':
        return AiutaAnalyticsHistoryEvent.fromJson(json);
      case 'share':
        return AiutaAnalyticsShareEvent.fromJson(json);
      default:
        throw Exception('Unknown analytic type');
    }
  }

  Map<String, dynamic> toJson();
}

/// This event is sent when the SDK is configured.
/// It contains information about enabled features and authentication type.
@JsonSerializable()
class AiutaAnalyticsConfigureEvent extends AiutaAnalyticsEvent {
  /// Type of authentication used in the SDK.
  final AiutaAnalyticsAuthType authType;

  /// Type of consent flow used in the SDK.
  final AiutaAnalyticsConsentType? consentType;

  /// Whether welcome screen feature is enabled.
  final bool welcomeScreenFeatureEnabled;

  /// Whether onboarding feature is enabled.
  final bool onboardingFeatureEnabled;

  /// Whether onboarding best results page feature is enabled.
  final bool onboardingBestResultsPageFeatureEnabled;

  /// Whether image picker camera feature is enabled.
  final bool imagePickerCameraFeatureEnabled;

  /// Whether image picker predefined model feature is enabled.
  final bool imagePickerPredefinedModelFeatureEnabled;

  /// Whether image picker uploads history feature is enabled.
  final bool imagePickerUploadsHistoryFeatureEnabled;

  /// Whether try-on fit disclaimer feature is enabled.
  final bool tryOnFitDisclaimerFeatureEnabled;

  /// Whether try-on feedback feature is enabled.
  final bool tryOnFeedbackFeatureEnabled;

  /// Whether try-on feedback other feature is enabled.
  final bool tryOnFeedbackOtherFeatureEnabled;

  /// Whether try-on generations history feature is enabled.
  final bool tryOnGenerationsHistoryFeatureEnabled;

  /// Whether try-on multi item feature is enabled.
  final bool tryOnMultiItemFeatureEnabled;

  /// Whether try-on with other photo feature is enabled.
  final bool tryOnWithOtherPhotoFeatureEnabled;

  /// Whether share feature is enabled.
  final bool shareFeatureEnabled;

  /// Whether share watermark feature is enabled.
  final bool shareWatermarkFeatureEnabled;

  /// Whether wishlist feature is enabled.
  final bool wishlistFeatureEnabled;

  /// Creates a configure event.
  AiutaAnalyticsConfigureEvent({
    required this.authType,
    this.consentType,
    required this.welcomeScreenFeatureEnabled,
    required this.onboardingFeatureEnabled,
    required this.onboardingBestResultsPageFeatureEnabled,
    required this.imagePickerCameraFeatureEnabled,
    required this.imagePickerPredefinedModelFeatureEnabled,
    required this.imagePickerUploadsHistoryFeatureEnabled,
    required this.tryOnFitDisclaimerFeatureEnabled,
    required this.tryOnFeedbackFeatureEnabled,
    required this.tryOnFeedbackOtherFeatureEnabled,
    required this.tryOnGenerationsHistoryFeatureEnabled,
    required this.tryOnMultiItemFeatureEnabled,
    required this.tryOnWithOtherPhotoFeatureEnabled,
    required this.shareFeatureEnabled,
    required this.shareWatermarkFeatureEnabled,
    required this.wishlistFeatureEnabled,
    AiutaAnalyticsPageId? pageId,
    String? productId,
  }) : super(
          type: AiutaAnalyticsEventType.configure,
          pageId: null,
          productId: null,
        );

  // Internal json staff
  factory AiutaAnalyticsConfigureEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsConfigureEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsConfigureEventToJson(this);
}

/// This event is sent when a session is started.
@JsonSerializable()
class AiutaAnalyticsSessionEvent extends AiutaAnalyticsEvent {
  /// Type of flow in the SDK.
  final AiutaAnalyticsFlowType flow;

  /// Creates a session event.
  AiutaAnalyticsSessionEvent({
    required this.flow,
    AiutaAnalyticsPageId? pageId,
    String? productId,
  }) : super(
          type: AiutaAnalyticsEventType.session,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsSessionEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsSessionEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsSessionEventToJson(this);
}

/// Event that represents a page view.
/// This event is sent when a user navigates to a new page.
@JsonSerializable()
class AiutaAnalyticsPageEvent extends AiutaAnalyticsEvent {
  /// Id of the page.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  final String productId;

  /// Creates a page view event.
  AiutaAnalyticsPageEvent({
    required this.pageId,
    required this.productId,
  }) : super(
          type: AiutaAnalyticsEventType.page,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsPageEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsPageEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsPageEventToJson(this);
}

/// This event is sent when a user interacts with an onboarding screens.
@JsonSerializable()
class AiutaAnalyticsOnboardingEvent extends AiutaAnalyticsEvent {
  /// Type of the onboarding event.
  final AiutaAnalyticsOnboardingEventType event;

  /// Id of the page.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  final String productId;

  final List<String>? consentIds;

  /// Creates an onboarding event.
  AiutaAnalyticsOnboardingEvent({
    required this.event,
    required this.pageId,
    required this.productId,
    this.consentIds,
  }) : super(
          type: AiutaAnalyticsEventType.onboarding,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsOnboardingEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsOnboardingEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsOnboardingEventToJson(this);
}

/// This event is sent when a user interacts with the picker.
/// This includes selecting an uploaded image, taking a photo, choosing gallery image, etc.
@JsonSerializable()
class AiutaAnalyticsPickerEvent extends AiutaAnalyticsEvent {
  /// Type of the picker event representing the user action.
  final AiutaAnalyticsPickerEventType event;

  /// Id of the page where the picker is located.
  /// For this event, the pageId is either AiutaAnalyticPageId.imagePicker or AiutaAnalyticPageId.results.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  final String productId;

  /// Creates a picker event.
  AiutaAnalyticsPickerEvent({
    required this.event,
    required this.pageId,
    required this.productId,
  }) : super(
          type: AiutaAnalyticsEventType.picker,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsPickerEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsPickerEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsPickerEventToJson(this);
}

/// This event is sent when a user exits the SDK.
/// This includes pressing the back/close button, closing the bottom sheet with the SDK, etc.
@JsonSerializable()
class AiutaAnalyticsExitEvent extends AiutaAnalyticsEvent {
  /// Id of the page where the exit event is triggered.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  final String productId;

  /// Creates an exit event.
  AiutaAnalyticsExitEvent({
    required this.pageId,
    required this.productId,
  }) : super(
          type: AiutaAnalyticsEventType.picker,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsExitEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsExitEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsExitEventToJson(this);
}

/// This event is sent when a user is waiting for the try-on to be processed.
@JsonSerializable()
class AiutaAnalyticsTryOnEvent extends AiutaAnalyticsEvent {
  /// Type of the try-on event.
  final AiutaAnalyticsTryOnEventType event;

  /// Id of the page.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  final String productId;

  /// Type of the error if the try-on fails.
  final AiutaAnalyticsTryOnEventErrorType? errorType;

  /// Additional message in case of try on progress
  final String? errorMessage;

  /// Creates a try-on event.
  AiutaAnalyticsTryOnEvent({
    required this.event,
    required this.pageId,
    required this.productId,
    this.errorType,
    this.errorMessage,
  }) : super(
          type: AiutaAnalyticsEventType.picker,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsTryOnEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsTryOnEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsTryOnEventToJson(this);
}

/// This event is sent when a user interacts with the results screen.
@JsonSerializable()
class AiutaAnalyticsResultsEvent extends AiutaAnalyticsEvent {
  /// Type of the results event.
  final AiutaAnalyticsResultsEventType event;

  /// Id of the page.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  /// Matches the id of either the product which is passed to the SDK by starting try-on
  final String productId;

  /// Creates a results event.
  AiutaAnalyticsResultsEvent({
    required this.event,
    required this.pageId,
    required this.productId,
  }) : super(
          type: AiutaAnalyticsEventType.picker,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsResultsEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsResultsEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsResultsEventToJson(this);
}

/// This event is sent when a user provides feedback for generated images.
@JsonSerializable()
class AiutaAnalyticsFeedbackEvent extends AiutaAnalyticsEvent {
  /// Type of the feedback event.
  final AiutaAnalyticsFeedbackEventType event;

  /// Index of the negative feedback option if user selects one.
  final int? negativeFeedbackOptionIndex;

  /// Text of the negative feedback if user provides one when selecting the "Other" option.
  /// Or text of the predefined negative feedback option if user selects one.
  /// Or null if user prefers not to provide detailed feedback.
  final String? negativeFeedbackText;

  /// Id of the page.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  final String productId;

  /// Creates a feedback event.
  AiutaAnalyticsFeedbackEvent({
    required this.event,
    required this.pageId,
    required this.productId,
    this.negativeFeedbackOptionIndex,
    this.negativeFeedbackText,
  }) : super(
          type: AiutaAnalyticsEventType.picker,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsFeedbackEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsFeedbackEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsFeedbackEventToJson(this);
}

/// This event is sent when a user interacts with the try-on history screen.
@JsonSerializable()
class AiutaAnalyticsHistoryEvent extends AiutaAnalyticsEvent {
  /// Type of the history event.
  final AiutaAnalyticsHistoryEventType event;

  /// Id of the page.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  final String productId;

  /// Creates a history event.
  AiutaAnalyticsHistoryEvent({
    required this.event,
    required this.pageId,
    required this.productId,
  }) : super(
          type: AiutaAnalyticsEventType.picker,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsHistoryEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsHistoryEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsHistoryEventToJson(this);
}

/// This event is sent when a user shares content.
@JsonSerializable()
class AiutaAnalyticsShareEvent extends AiutaAnalyticsEvent {
  /// Type of share event.
  final AiutaAnalyticsShareEventType event;

  /// ID of the target platform where content is shared.
  final String? targetId;

  /// Creates a share event.
  AiutaAnalyticsShareEvent({
    required this.event,
    this.targetId,
    AiutaAnalyticsPageId? pageId,
    String? productId,
  }) : super(
          type: AiutaAnalyticsEventType.share,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsShareEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsShareEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsShareEventToJson(this);
}
