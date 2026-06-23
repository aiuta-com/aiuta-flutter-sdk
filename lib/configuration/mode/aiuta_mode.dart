/// Try-on mode selected at launch time for the virtual try-on flow.
///
/// The mode is a per-launch runtime choice that tailors specific surfaces
/// (onboarding, image picker) for a particular try-on scenario.
enum AiutaMode {
  /// General try-on mode (the default).
  general,

  /// Shoes try-on mode, using the overrides configured in
  /// [AiutaModes.shoes].
  shoes,
}
