import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_fit_disclaimer_strings.g.dart';

@JsonSerializable()
class AiutaTryOnFitDisclaimerStrings {
  /// Title for the Fit Disclaimer.
  final String fitDisclaimerTitle;

  /// Description for the Fit Disclaimer.
  final String fitDisclaimerDescription;

  /// Text for the close button in the Fit Disclaimer.
  final String fitDisclaimerButtonClose;

  AiutaTryOnFitDisclaimerStrings({
    required this.fitDisclaimerTitle,
    required this.fitDisclaimerDescription,
    required this.fitDisclaimerButtonClose,
  });

  // Internal json staff
  factory AiutaTryOnFitDisclaimerStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnFitDisclaimerStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnFitDisclaimerStringsToJson(this);
}
