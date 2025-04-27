/// The mode of the consent feature.
enum AiutaConsentMode {
  /// Consent information will be embedded into the onboarding pages in the bottom of the screen.
  /// The user is not required to explicitly accept the terms and conditions in order to proceed.
  embeddedIntoOnboarding,

  /// Consent information will be displayed in a standalone page after the onboarding
  /// (as the last page of the onboarding if it is enabled, or as a separate page otherwise).
  /// The user needs to accept the terms by setting required checkboxes to continue.
  standaloneOnboardingPage,

  /// Consent information will be displayed in a bottom sheet
  /// when the user tries to upload a photo in the photo picker.
  /// The user needs to accept the terms by setting required checkboxes to continue.
  standaloneImagePickerPage,
}
