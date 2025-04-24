/// Defines how the SDK will be presented as modal view controller.
enum AiutaPresentationStyle {
  /// The SDK will be presented in a page sheet.
  /// This is `recommended` since iOS 13, when Apple has introduced a new modal presentation style.
  /// This allows some of the parent view to remain visible,
  /// helping people retain their original context as they interact with the sheet.
  /// Please see [Best practices from Apple's HIG](https://developer.apple.com/design/human-interface-guidelines/sheets#Best-practices) for more information.
  ///
  /// Android will behave as [bottomSheet] when this mode is selected.
  pageSheet,

  /// Opens the SDK in a bottom sheet.
  /// iOS has support of this mode only from version `16`.
  /// Older versions will behave as `pageSheet`.
  bottomSheet,

  /// Opens the SDK in a full screen mode.
  fullScreen,
}
