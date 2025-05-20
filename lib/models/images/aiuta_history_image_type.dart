/// Enum representing the type of image in the Aiuta history.
enum AiutaHistoryImageType {
  /// Image uploaded by the user (taken from the camera or gallery).
  /// This image belongs to the user.
  /// When the user removes the image from the history,
  /// it should be deleted from the storage as well.
  user,

  /// Image of the model, provided by the Aiuta.
  /// This image could be linked to the user history,
  /// but it is not owned by the user, and should not be deleted,
  /// only unlinked from the user's history in case of removing.
  aiuta
}
