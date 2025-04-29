import 'package:aiuta_flutter/src/models/actions/aiuta_data_action_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_data_action_success.g.dart';

@JsonSerializable()
class AiutaDataActionSuccess {
  String? actionId;
  final AiutaDataActionType actionType;

  AiutaDataActionSuccess({
    this.actionId,
    required this.actionType,
  });

  factory AiutaDataActionSuccess.fromJson(Map<String, dynamic> json) =>
      _$AiutaDataActionSuccessFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaDataActionSuccessToJson(this);
}
