/// Enum representing validation policies.
enum AiutaValidationPolicy {
  /// Ignore the validation.
  /// This is recommended for production use.
  ignore,

  /// Log a warning to the console if the validation fails.
  warning,

  /// Crash the app if the validation fails.
  /// Use only under debugger to catch the place where the validation fails.
  ///
  /// This is highly not recommended for production use.
  fatal,
}
