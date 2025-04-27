import 'package:aiuta_flutter/models/analytics/aiuta_analytics_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_onboarding_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_page_id.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_feedback_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_history_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_picker_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_results_event_type.dart';
import 'package:aiuta_flutter/models/analytics/aiuta_analytics_tryon_event_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_analytics_event.g.dart';

/// Base class for all analytic events.
sealed class AiutaAnalyticsEvent {
  /// Type of the analytic event.
  final AiutaAnalyticsEventType type;

  /// Id of the page.
  final AiutaAnalyticsPageId pageId;

  /// Id of the product that the user interacts with.
  /// Matches the id of either the product which is passed to the SDK by starting try-on
  final String productId;

  /// Creates an analytic event.
  AiutaAnalyticsEvent({
    required this.type,
    required this.pageId,
    required this.productId,
  });

  // Json staff
  factory AiutaAnalyticsEvent.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'pageEvent':
        return AiutaAnalyticsPageEvent.fromJson(json);
      case 'onboardingEvent':
        return AiutaAnalyticsOnboardingEvent.fromJson(json);
      case 'pickerEvent':
        return AiutaAnalyticsPickerEvent.fromJson(json);
      case 'exitEvent':
        return AiutaAnalyticsExitEvent.fromJson(json);
      case 'tryOnEvent':
        return AiutaAnalyticsTryOnEvent.fromJson(json);
      case 'resultsEvent':
        return AiutaAnalyticsResultsEvent.fromJson(json);
      case 'feedbackEvent':
        return AiutaAnalyticsFeedbackEvent.fromJson(json);
      case 'historyEvent':
        return AiutaAnalyticsHistoryEvent.fromJson(json);
      default:
        throw Exception('Unknown analytic type');
    }
  }

  Map<String, dynamic> toJson();
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
          type: AiutaAnalyticsEventType.pageEvent,
          pageId: pageId,
          productId: productId,
        );

  // Json staff
  /// Creates a page view event from a JSON object.
  factory AiutaAnalyticsPageEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsPageEventFromJson(json);

  /// Converts the page view event to a JSON object.
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
          type: AiutaAnalyticsEventType.onboardingEvent,
          pageId: pageId,
          productId: productId,
        );

  // Json staff
  /// Creates an onboarding event from a JSON object.
  factory AiutaAnalyticsOnboardingEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsOnboardingEventFromJson(json);

  /// Converts the onboarding event to a JSON object.
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
          type: AiutaAnalyticsEventType.pickerEvent,
          pageId: pageId,
          productId: productId,
        );

  // Json staff
  /// Creates a picker event from a JSON object.
  factory AiutaAnalyticsPickerEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsPickerEventFromJson(json);

  /// Converts the picker event to a JSON object.
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
          type: AiutaAnalyticsEventType.pickerEvent,
          pageId: pageId,
          productId: productId,
        );

  // Json staff
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

  /// Additional message in case of try on progress
  final String? errorMessage;

  /// Creates a try-on event.
  AiutaAnalyticsTryOnEvent({
    required this.event,
    required this.pageId,
    required this.productId,
    this.errorMessage,
  }) : super(
          type: AiutaAnalyticsEventType.pickerEvent,
          pageId: pageId,
          productId: productId,
        );

  // Json staff
  /// Creates a try-on event from a JSON object.
  factory AiutaAnalyticsTryOnEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsTryOnEventFromJson(json);

  /// Converts the try-on event to a JSON object.
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
          type: AiutaAnalyticsEventType.pickerEvent,
          pageId: pageId,
          productId: productId,
        );

  // Json staff
  /// Creates a results event from a JSON object.
  factory AiutaAnalyticsResultsEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsResultsEventFromJson(json);

  /// Converts the results event to a JSON object.
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
          type: AiutaAnalyticsEventType.pickerEvent,
          pageId: pageId,
          productId: productId,
        );

  // Json staff
  /// Creates a feedback event from a JSON object.
  factory AiutaAnalyticsFeedbackEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsFeedbackEventFromJson(json);

  /// Converts the feedback event to a JSON object.
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
          type: AiutaAnalyticsEventType.pickerEvent,
          pageId: pageId,
          productId: productId,
        );

  // Internal json staff
  factory AiutaAnalyticsHistoryEvent.fromJson(Map<String, dynamic> json) =>
      _$AiutaAnalyticsHistoryEventFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaAnalyticsHistoryEventToJson(this);
}
