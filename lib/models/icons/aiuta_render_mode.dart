/// Render mode for graphic resources.
enum AiutaRenderMode {
  /// Render the graphic resource as a is, without any modifications.
  /// This is useful for icons that are already colored.
  original,

  /// Allow the graphic resource to be tinted with the theme colors.
  template,
}
