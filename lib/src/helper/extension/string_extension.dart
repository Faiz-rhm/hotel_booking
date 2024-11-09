import 'package:path/path.dart' as p;

import '../constants/app_utils.dart';


/// A utility with extensions for strings.
extension StringExt on String {
  /// An extension for validating String is an email.
  bool get isValidEmail => Regexes.emailRegex.hasMatch(this);

  /// An extension for validating String is a name.
  bool get isValidName => Regexes.nameRegex.hasMatch(this);

  /// An extension for validating String is a contact.
  bool get isValidContact => Regexes.contactRegex.hasMatch(this);

  /// An extension for validating String is a contact.
  bool get isValidErp => Regexes.erpRegex.hasMatch(this);

  /// An extension for validating String is a zipCode.
  bool get isValidZipCode => Regexes.zipCodeRegex.hasMatch(this);

  /// An extension for validating String is a credit card number.
  bool get isValidCreditCardNumber => Regexes.creditCardNumberRegex.hasMatch(this);

  /// An extension for validating String is a credit card CVV.
  bool get isValidCreditCardCVV => Regexes.creditCardCVVRegex.hasMatch(this);

  /// An extension for validating String is a credit card expiry.
  bool get isValidCreditCardExpiry => Regexes.creditCardExpiryRegex.hasMatch(this);

  /// An extension for validating String is a valid OTP digit
  bool get isValidOtpDigit => Regexes.otpDigitRegex.hasMatch(this);

  /// An extension for converting String to CapitalCase.
  String get capitalize => this[0].toUpperCase() + substring(1).toLowerCase();

  /// An extension for replacing underscores in a String with spaces.
  String get removeUnderScore => replaceAll('_', ' ');

  /// An extension for getting file extension
  String get ext => p.extension(this);
}
