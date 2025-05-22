import 'package:aiuta_flutter/models/images/aiuta_owner_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_input_image.g.dart';

/// General image model of any history flows
@JsonSerializable()
class AiutaInputImage {
  /// ID of the uploaded image.
  final String id;

  /// URL of the image.
  final String url;

  /// Type of the image.
  final AiutaOwnerType type;

  /// Creates an [AiutaInputImage] with the given unique [id] and [url] path,
  /// [type] of the image defines the way how the image should be stored and
  /// removed from the users' history.
  AiutaInputImage({
    required this.id,
    required this.url,
    required this.type,
  });

  // Internal json staff
  factory AiutaInputImage.fromJson(Map<String, dynamic> json) =>
      _$AiutaInputImageFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaInputImageToJson(this);
}
