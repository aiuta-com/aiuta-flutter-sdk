import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_data_provider.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_icons.dart';
import 'package:aiuta_flutter/configuration/features/try_on/generations_history/aiuta_try_on_generations_history_strings.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:aiuta_flutter/models/images/aiuta_generated_image.dart';
import 'package:flutter/material.dart';

final class TryOnGenerationsHistoryFeatureBuilder {
  AiutaTryOnGenerationsHistoryFeature build() {
    final generatedImagesNotifier =
        ValueNotifier<List<AiutaGeneratedImage>>([]);

    return AiutaTryOnGenerationsHistoryFeature(
      icons: AiutaTryOnGenerationsHistoryIconsCustom(
        history24: AiutaIcon(path: "res/icons/ic_history_24.png"),
      ),
      strings: AiutaTryOnGenerationsHistoryStringsCustom(
        generationsHistoryPageTitle: "History",
      ),
      dataProvider: AiutaTryOnGenerationsHistoryDataProviderCustom(
        generatedImages: generatedImagesNotifier,
        addGeneratedImages: (newImages, _) async {
          var generated =
              List<AiutaGeneratedImage>.from(generatedImagesNotifier.value);
          generated.insertAll(0, newImages);
          generatedImagesNotifier.value = generated;
        },
        deleteGeneratedImages: (images) async {
          // Just for check - add deley
          await Future.delayed(const Duration(seconds: 2));
          var generated =
              List<AiutaGeneratedImage>.from(generatedImagesNotifier.value);
          images.forEach((image) {
            generated.removeWhere((test) {
              return test.id == image.id;
            });
          });
          generatedImagesNotifier.value = generated;
        },
      ),
    );
  }
}
