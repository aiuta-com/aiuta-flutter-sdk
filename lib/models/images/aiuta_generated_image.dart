import 'package:aiuta_flutter/models/images/aiuta_owner_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_generated_image.g.dart';

/// General image model of any history flows
@JsonSerializable()
class AiutaGeneratedImage {
  /// ID of the uploaded image.
  final String id;

  /// URL of the image.
  final String url;

  /// Type of the image.
  final AiutaOwnerType type;

  /// List of product IDs associated with this generated image.
  final List<String> productIds;

  /// Creates an [AiutaGeneratedImage] with the given unique [id],
  /// [url], [type], and associated [productIds].
  AiutaGeneratedImage({
    required this.id,
    required this.url,
    required this.type,
    required this.productIds,
  });

  // Internal json staff
  factory AiutaGeneratedImage.fromJson(Map<String, dynamic> json) =>
      _$AiutaGeneratedImageFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaGeneratedImageToJson(this);
}
