import 'package:json_annotation/json_annotation.dart';

part 'aiuta_media.g.dart';

/// Scaling strategy for [AiutaMedia] content within its surface bounds.
enum AiutaMediaContentScale {
  /// Scale to fit entirely within the bounds, preserving aspect ratio
  /// (may letterbox).
  fit,

  /// Scale to fill the bounds, preserving aspect ratio and cropping the
  /// overflow.
  fill,
}

/// A media resource that combines a static image with an optional video.
///
/// Use it wherever a surface may show either a looping video or a still image:
/// - [image] is always required. It is shown as the poster/placeholder while
///   the video buffers, if playback fails, and as the sole content when
///   [videoSource] is `null`.
/// - [videoSource] is an optional playable source string — a remote `https://`
///   URL or a local file URI. When set, the video is played on top of [image].
/// - [contentScale] controls how both the image and the video are scaled to fit
///   the surface bounds.
@JsonSerializable()
class AiutaMedia {
  /// Asset path of the poster/placeholder image, and the content when no
  /// video is set.
  final String image;

  /// Optional video source — a remote URL or a local file URI.
  @JsonKey(includeIfNull: false)
  final String? videoSource;

  /// How the image and video are scaled within the surface.
  final AiutaMediaContentScale contentScale;

  /// Creates an [AiutaMedia] with the required [image] asset path, an optional
  /// [videoSource] and the [contentScale] strategy (defaults to
  /// [AiutaMediaContentScale.fill]).
  AiutaMedia({
    required this.image,
    this.videoSource,
    this.contentScale = AiutaMediaContentScale.fill,
  });

  // Internal json staff
  factory AiutaMedia.fromJson(Map<String, dynamic> json) =>
      _$AiutaMediaFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaMediaToJson(this);
}
