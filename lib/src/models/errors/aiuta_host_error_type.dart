/// The types of errors that can occur when executing host app callbacks and
/// those that can be handled by the Aiuta SDK.
enum AiutaHostErrorType {
  /// Error is thrown while host app deleting the uploaded images.
  failedToDeleteUploadedImages,

  /// Error is thrown while host app deleting the generated images.
  failedToDeleteGeneratedImages;
}
