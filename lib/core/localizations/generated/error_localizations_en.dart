// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'error_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ErrorLocalizationsEn extends ErrorLocalizations {
  ErrorLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get somethingWentWrong => 'Ups, something went wrong!';

  @override
  String get fieldNotEmpty => 'This field must not be empty';

  @override
  String fieldMaxLengthError(int value) {
    return 'This field must not contain more than $value characters';
  }

  @override
  String get defaultErrorTitle => 'An Error occurred Error';

  @override
  String get defaultErrorDescription => 'Unfortunately this did not work and an error occurred. Please try again later.';

  @override
  String get retry => 'Try again';

  @override
  String get serverError => 'Server Error';

  @override
  String get cacheError => 'Cache Error';

  @override
  String get unknownError => 'Unknown Error';

  @override
  String get invalidEmail => 'Email address invalid';

  @override
  String get userDisabled => 'Your account is disabled. Please contact support.';

  @override
  String get userNotFound => 'We could not find your account. Are you new here?';

  @override
  String get wrongPassword => 'The password is incorrect';

  @override
  String get tooManyRequests => 'We are currently too popular. Give us a few seconds and try again.';

  @override
  String get emailAlreadyInUse => 'This email address is already in use. Please use another one or log in.';

  @override
  String get ratingCalculationError => 'Rating calculation failed';

  @override
  String get processCreationError => 'An error occurred while creating the process!';

  @override
  String get versionError => 'An error occurred while loading the version!';
}
