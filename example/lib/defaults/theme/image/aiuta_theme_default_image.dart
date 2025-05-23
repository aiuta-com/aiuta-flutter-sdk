import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_theme.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';

final class ImageThemeBuilder {
  AiutaImageTheme build() => AiutaImageTheme(
        shapes: AiutaImageShapes(
          imageL: 24,
          imageS: 16,
        ),
        icons: AiutaImageIcons(
          imageError36: AiutaIcon(path: "res/icons/ic_image_error_36.png"),
        ),
      );
}
