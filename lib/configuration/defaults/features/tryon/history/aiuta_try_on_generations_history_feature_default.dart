import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_strings.dart';

final class AiutaTryOnGenerationsHistoryFeatureDefaultBuilder {
  AiutaTryOnGenerationsHistoryFeature build() {
    return AiutaTryOnGenerationsHistoryFeature(
      icons: AiutaTryOnGenerationsHistoryIconsBuiltIn(),
      strings: AiutaTryOnGenerationsHistoryStringsBuiltIn(),
      dataProvider: AiutaTryOnGenerationsHistoryDataProviderBuiltIn(),
    );
  }
}
