import 'package:aiuta_flutter/models/images/aiuta_history_image_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_history_image.g.dart';

/// General image model of any history flows
@JsonSerializable()
class AiutaHistoryImage {
  /// ID of the uploaded image.
  final String id;

  /// URL of the image.
  final String url;

  /// Type of the image.
  final AiutaHistoryImageType type;

  /// Creates an [AiutaHistoryImage] with the given unique [id] and [url] path,
  /// [type] of the image defines the way how the image should be stored and
  /// removed from the users' history.
  AiutaHistoryImage({
    required this.id,
    required this.url,
    required this.type,
  });

  // Internal json staff
  factory AiutaHistoryImage.fromJson(Map<String, dynamic> json) =>
      _$AiutaHistoryImageFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaHistoryImageToJson(this);
}
