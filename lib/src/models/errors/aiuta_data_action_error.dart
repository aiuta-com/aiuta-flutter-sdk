import 'package:aiuta_flutter/src/models/actions/aiuta_data_action_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_data_action_error.g.dart';

@JsonSerializable()
class AiutaDataActionError {
  String? actionId;
  final AiutaDataActionType actionType;

  AiutaDataActionError({
    this.actionId,
    required this.actionType,
  });

  factory AiutaDataActionError.fromJson(Map<String, dynamic> json) =>
      _$AiutaDataActionErrorFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaDataActionErrorToJson(this);
}
