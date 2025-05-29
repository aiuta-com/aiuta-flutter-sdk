import 'package:aiuta_flutter/configuration/features/share/aiuta_share_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_icons.dart';
import 'package:aiuta_flutter/configuration/features/share/aiuta_share_strings.dart';
import 'package:aiuta_flutter/configuration/features/share/watermark/aiuta_share_watermark_feature.dart';
import 'package:aiuta_flutter/configuration/features/share/watermark/aiuta_share_watermark_images.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ShareFeatureBuilder {
  AiutaShareFeature build() => AiutaShareFeature(
        watermark: AiutaShareWatermarkFeature(
          images: AiutaShareWatermarkImagesCustom(
            watermark: "res/images/logo.png",
          ),
        ),
        icons: AiutaShareIconsCustom(
          share24: AiutaIcon(path: "res/icons/ic_share_24.png"),
        ),
        strings: AiutaShareStringsCustom(
          shareButton: "Share",
        ),
        dataProvider: AiutaShareDataProviderCustom(
          getShareText: (productIds) async {
            return "Check out these products: ${productIds.join(', ')}";
          },
        ),
      );
}
