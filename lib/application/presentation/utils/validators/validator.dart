bool isValidPhoneNumber(String input) {
  final phoneNumberRegex = RegExp(r'^[0-9]{10}$');
  return phoneNumberRegex.hasMatch(input);
}

bool isValidEmail(String input) {
  final emailRegex =
      RegExp(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$');
  return emailRegex.hasMatch(input);
}

bool isValidAge(String input) {
  final ageRegex = RegExp(r'^[1-9][0-9]{0,2}$');
  return ageRegex.hasMatch(input);
}

bool isValidName(String input) {
  final nameRegex = RegExp(r'^[a-zA-Z]+(\s[a-zA-Z]+)?$');
  return nameRegex.hasMatch(input);
}
