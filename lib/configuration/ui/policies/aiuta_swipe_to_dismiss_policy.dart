/// Top-down swipe behavior to close the SDK at any time.
/// Affects iOS platform only.
enum AiutaSwipeToDismissPolicy {
  /// Closes the SDK at any time in any page by pulling down anywhere on the screen.
  allowAlways,

  /// Closes the SDK at any time in any page by pulling down only on the header.
  allowHeaderSwipeOnly,

  /// On some pages that are safe to close (such as onboarding, photo picker) `allowAlways` policy applies.
  /// On other pages that wait for generation or showing results - `allowHeaderSwipeOnly` policy applies.
  protectTheNecessaryPages
}
