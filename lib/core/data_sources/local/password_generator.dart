import 'dart:math';

class PasswordGenerator {
  static const String _upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  static const String _lowerCase = 'abcdefghijklmnopqrstuvwxyz';
  static const String _numbers = '0123456789';
  static const String _special = '!@#\$%^&*()_+-=[]{}|;:,.<>?';

  static final Random _random = Random.secure();

  static String generatePassword({
    int length = 16,
    bool useUpperCase = true,
    bool useLowerCase = true,
    bool useNumbers = true,
    bool useSpecial = true,
  }) {
    assert(length >= 4, 'Password length must be at least 4 characters');
    assert(useUpperCase || useLowerCase || useNumbers || useSpecial, 'At least one character type must be selected');

    String allowedChars = '';
    if (useUpperCase) allowedChars += _upperCase;
    if (useLowerCase) allowedChars += _lowerCase;
    if (useNumbers) allowedChars += _numbers;
    if (useSpecial) allowedChars += _special;

    final forcedCharCount = [useUpperCase, useLowerCase, useNumbers, useSpecial].where((e) => e).length;
    List<String> password = List.generate(length - forcedCharCount, (_) => _getRandomChar(allowedChars));

    if (useUpperCase) password.add(_getRandomChar(_upperCase));
    if (useLowerCase) password.add(_getRandomChar(_lowerCase));
    if (useNumbers) password.add(_getRandomChar(_numbers));
    if (useSpecial) password.add(_getRandomChar(_special));

    password.shuffle(_random);

    return password.join();
  }

  static String _getRandomChar(String source) => source[_random.nextInt(source.length)];

  static PasswordStrength checkStrength(String password) {
    int strength = 0;

    strength += password.length >= 8 ? 1 : 0;
    strength += password.length >= 12 ? 1 : 0;

    if (password.contains(RegExp(r'[A-Z]'))) strength += 1;
    if (password.contains(RegExp(r'[a-z]'))) strength += 1;
    if (password.contains(RegExp(r'[0-9]'))) strength += 1;
    if (password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) strength += 1;

    return switch (strength) {
      0 || 1 => PasswordStrength.veryWeak,
      2 => PasswordStrength.weak,
      3 => PasswordStrength.moderate,
      4 => PasswordStrength.strong,
      _ => PasswordStrength.veryStrong,
    };
  }
}

enum PasswordStrength {
  veryWeak,
  weak,
  moderate,
  strong,
  veryStrong,
}
