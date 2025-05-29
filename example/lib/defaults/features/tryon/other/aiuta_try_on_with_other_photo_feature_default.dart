import 'package:aiuta_flutter/configuration/features/try_on/other_photo/aiuta_try_on_with_other_photo_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/other_photo/aiuta_try_on_with_other_photo_icons.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class TryOnWithOtherPhotoFeatureBuilder {
  AiutaTryOnWithOtherPhotoFeature build() => AiutaTryOnWithOtherPhotoFeature(
        icons: AiutaTryOnWithOtherPhotoIconsCustom(
          changePhoto24: AiutaIcon(path: "res/icons/ic_repicking_24.png"),
        ),
      );
}
