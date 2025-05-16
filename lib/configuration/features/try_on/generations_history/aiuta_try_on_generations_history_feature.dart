import 'package:aiuta_flutter/src/utils/null_utils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_strings.dart';

part 'aiuta_try_on_generations_history_feature.g.dart';

/// The feature for the generations history in the virtual try-on to keep track
/// of the previous generations with the ability to delete them.
@JsonSerializable()
class AiutaTryOnGenerationsHistoryFeature {
  /// Icons used in the generations history feature.
  final AiutaTryOnGenerationsHistoryIcons icons;

  /// Strings used in the generations history feature.
  final AiutaTryOnGenerationsHistoryStrings strings;

  /// Data provider for the generations history feature.
  final AiutaTryOnGenerationsHistoryDataProvider dataProvider;

  /// Creates an [AiutaTryOnGenerationsHistoryFeature] with the [icons] and
  /// [strings] to configure the generations history feature, and
  /// [dataProvider] to control the data of the generations history.
  AiutaTryOnGenerationsHistoryFeature({
    required this.icons,
    required this.strings,
    required this.dataProvider,
  });

  // Internal json staff
  factory AiutaTryOnGenerationsHistoryFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnGenerationsHistoryFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaTryOnGenerationsHistoryFeatureToJson(this);
}
