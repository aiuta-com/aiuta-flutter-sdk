/// This enum represents the reason why the try-on process was aborted.
enum AiutaAnalyticsTryOnAbortedReasonType {
  /// The server aborted the operation due to an invalid user input photo.
  operationAborted,

  /// The user cancelled the try-on process.
  userCancelled,
}
