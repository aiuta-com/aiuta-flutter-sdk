import 'package:aiuta_flutter/configuration/features/share/aiuta_share_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_icons.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_strings.dart';

final class AiutaShareFeatureDefaultBuilder {
  AiutaShareFeature build() => AiutaShareFeature(
        icons: AiutaShareIconsBuiltIn(),
        strings: AiutaShareStringsBuiltIn(),
      );
}
