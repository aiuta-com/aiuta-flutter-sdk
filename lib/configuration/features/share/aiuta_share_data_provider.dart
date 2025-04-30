class AiutaShareDataProvider {
  /// Callback to get the share text based on product IDs.
  final Future<String> Function(List<String> productIds) getShareText;

  AiutaShareDataProvider({
    required this.getShareText,
  });
}
