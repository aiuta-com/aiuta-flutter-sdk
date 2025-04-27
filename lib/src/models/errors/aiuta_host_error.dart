import 'package:aiuta_flutter/src/models/errors/aiuta_host_error_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_host_error.g.dart';

@JsonSerializable()
class AiutaHostError {
  final AiutaHostErrorType errorType;

  AiutaHostError({
    required this.errorType,
  });

  factory AiutaHostError.fromJson(Map<String, dynamic> json) =>
      _$AiutaHostErrorFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaHostErrorToJson(this);
}
