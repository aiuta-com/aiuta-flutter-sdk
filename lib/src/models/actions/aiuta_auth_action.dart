import 'package:aiuta_flutter/src/models/actions/aiuta_auth_action_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_auth_action.g.dart';

sealed class AiutaAuthAction {
  AiutaAuthActionType type;

  AiutaAuthAction(this.type);

  factory AiutaAuthAction.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'requestJwt':
        return RequestJwtAction.fromJson(json);
      default:
        throw Exception('Unknown auth action type');
    }
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class RequestJwtAction extends AiutaAuthAction {
  final String params;

  RequestJwtAction({
    required this.params,
  }) : super(AiutaAuthActionType.requestJwt);

  factory RequestJwtAction.fromJson(Map<String, dynamic> json) =>
      _$RequestJwtActionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RequestJwtActionToJson(this);
}
