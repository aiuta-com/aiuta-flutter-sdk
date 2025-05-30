import 'package:aiuta_flutter/configuration/features/share/aiuta_share_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_icons.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_strings.dart';
import 'package:aiuta_flutter/configuration/features/share/watermark/aiuta_share_watermark_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/watermark/aiuta_share_watermark_images.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class AiutaShareFeatureDefaultBuilder {
  AiutaShareFeature build() => AiutaShareFeature(
        icons: AiutaShareIconsBuiltIn(),
        strings: AiutaShareStringsBuiltIn(),
      );
}
