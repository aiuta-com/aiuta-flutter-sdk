/// Enum for the different types of events that can be logged in Aiuta.
enum AiutaAnalyticsEventType {
  /// Events related to SDK configuration.
  configure,

  /// Events related to session management.
  session,

  /// User navigates to a new page.
  page,

  /// Events during onboarding.
  onboarding,

  /// User interacts with the image picker.
  /// This includes selecting an uploaded image, taking a photo, choosing gallery image, etc.
  picker,

  /// User exits the Aiuta SDK.
  exit,

  /// Events related to try-on process.
  tryOn,

  /// Events related to the results page.
  results,

  /// Feedback events.
  feedback,

  /// Interactions with the generation history.
  history,

  /// Events related to sharing functionality.
  share,
}
