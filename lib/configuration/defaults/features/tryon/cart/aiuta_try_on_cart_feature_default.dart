import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_feature.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_handler.dart';
import 'package:aiuta_flutter/configuration/features/try_on/cart/aiuta_try_on_cart_strings.dart';

final class AiutaTryOnCartFeatureDefaultBuilder {
  AiutaTryOnCartFeature build({
    required AiutaTryOnCartHandler handler,
  }) =>
      AiutaTryOnCartFeature(
        strings: AiutaTryOnCartStringsBuiltIn(),
        handler: handler,
      );
}
