import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font.dart';
import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';

final class FontThemeBuilder {
  List<AiutaFont> build() => [
        AiutaFont(
            filePath: "res/fonts/roboto_thin.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.thin),
        AiutaFont(
            filePath: "res/fonts/roboto_extra_light.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.extralight),
        AiutaFont(
            filePath: "res/fonts/roboto_light.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.light),
        AiutaFont(
            filePath: "res/fonts/roboto.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.normal),
        AiutaFont(
            filePath: "res/fonts/roboto_medium.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.medium),
        AiutaFont(
            filePath: "res/fonts/roboto_hairline.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.semibold),
        AiutaFont(
            filePath: "res/fonts/roboto_bold.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.bold),
        AiutaFont(
            filePath: "res/fonts/roboto_heavy.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.extrabold),
        AiutaFont(
            filePath: "res/fonts/roboto_black.ttf",
            family: "Roboto",
            weight: AiutaFontWeight.black),
      ];
}
