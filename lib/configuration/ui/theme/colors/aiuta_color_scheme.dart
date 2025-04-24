/// Defines the color scheme for the SDK UI.
///
/// Affects the display of system screens (e.g. photo gallery, share activity, etc.)
/// and overrides their UIUserInterfaceStyle to match the SDK style.
/// I.e. if the SDK style is set to light, but the system theme on the user's device is dark,
/// the style of system windows called from the SDK will be light.
///
/// Inside the SDK affects the style of Blur components and the tint of icon recoloring.
enum AiutaColorScheme {
  /// A light theme, with a predominance of light colors in the design.
  light,

  /// A dark theme, with dark colors predominating.
  dark
}
