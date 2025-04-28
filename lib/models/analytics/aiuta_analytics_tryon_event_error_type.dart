/// This enum represents the type of error that can occur during the try-on process.
enum AiutaAnalyticsTryOnEventErrorType {
  /// Any reason users' photo cannot be processed by the SDK,
  /// that is not related to the try-on generation process on the server.
  /// This covers failure to read, downscale, compress and get JPG data of the photo.
  preparePhotoFailed,

  /// Any reason users' photo cannot be uploaded to the server.
  /// This may be caused by network issues, server issues, or any other reason.
  uploadPhotoFailed,

  /// The request to the server was not authorized.
  authorizationFailed,

  /// SDK failed to make a request to the server to start the try-on process.
  /// This may be caused by network issues, server issues, or any other reason.
  requestOperationFailed,

  /// SDK successfully made a request to the server to start the try-on process,
  /// but the server returned an error.
  startOperationFailed,

  /// SDK successfully made a request to the server to start the try-on process,
  /// operation was started, but the server returned an error while processing
  /// the operation, and it was failed. SDK stopped waiting for the result.
  operationFailed,

  /// SDK successfully made a request to the server to start the try-on process,
  /// operation was started, but the server aborted the operation, because
  /// of the invalid user input photo.
  operationAborted,

  /// SDK successfully made a request to the server to start the try-on process,
  /// operation was started, but the status of the operation was not changed
  /// for a long time, and the SDK stopped waiting for the result.
  operationTimeout,

  /// Try-on operation was completed, but the empty result was returned.
  operationEmptyResults,

  /// Try-on operation was completed, but the result was not downloaded.
  /// This may be caused by network issues, server issues, or any other reason.
  downloadResultFailed,

  /// Unexpected error occurred during the try-on process.
  /// Those should be reported to the SDK developers,
  /// as it is not supposed to happen.
  internalSdkError,
}
