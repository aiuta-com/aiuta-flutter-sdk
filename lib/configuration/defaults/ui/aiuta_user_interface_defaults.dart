import 'package:aiuta_flutter/configuration/defaults/ui/theme/aiuta_theme_defaults.dart';
import 'package:aiuta_flutter/configuration/ui/aiuta_user_interface.dart';
import 'package:aiuta_flutter/configuration/ui/policies/aiuta_presentation_style.dart';
import 'package:aiuta_flutter/configuration/ui/policies/aiuta_swipe_to_dismiss_policy.dart';

final class AiutaUserInterfaceConfigurationDefaultBuilder {
  AiutaUserInterfaceConfiguration build() => AiutaUserInterfaceConfiguration(
        presentationStyle: AiutaPresentationStyle.fullScreen,
        swipeToDismiss: AiutaSwipeToDismissPolicy.protectTheNecessaryPages,
        theme: AiutaThemeDefaultBuilder().build(),
      );
}
