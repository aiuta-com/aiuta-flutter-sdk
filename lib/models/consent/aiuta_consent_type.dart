/// Enum representing the type of consent required for Aiuta to process users' photos.
enum AiutaConsentType {
  /// Consent has no checkbox and it is assumed to be given by pressing the [consentButtonAccept].
  ///
  /// Note: It can be just an [consentButtonAccept], but only if it’s very clear
  /// exactly what the user is consenting to at that moment.
  /// You can’t bundle multiple consents into one `accept` unless they’re strictly necessary.
  /// For example, GDPR says marketing consent should always be separate if possible.
  ///
  /// Note: Please consider that this option is not valid for all cases,
  /// and it should be used with caution.
  /// Consult with a legal department if in doubt.
  implicitWithoutCheckbox,

  /// Consent has disabled pre-ticked checkbox and it is assumed to be given
  /// by pressing the [consentButtonAccept].
  ///
  /// Note: This can be used only for the consent that is necessary for the
  /// service, it’s not really “consent” under GDPR — it’s processing
  /// based on contract necessity (Article 6(1)(b)) or legal obligation,
  /// not based on “freely given consent” (Article 6(1)(a)).
  /// So, it is just informing the user, not asking their permission.
  ///
  /// Note: Please consider that this option is not valid for all cases,
  /// and it should be used with caution.
  /// Consult with a legal department if in doubt.
  implicitWithCheckbox,

  /// Consent has a checkbox and the user must check it in order to continue.
  explicitRequired,

  /// Consent has a checkbox and the user may proceed without checking it.
  explicitOptional,
}
