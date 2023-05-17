class TextFieldValidators {
  TextFieldValidators._();
  static String? validateEmail(String? textFieldValue) {
    final emailRegex = RegExp("^\\S+@\\S+\\.\\S+\$");
    if (textFieldValue!.trim().isEmpty) {
      return 'Email can\'t be empty!';
    } else if (!emailRegex.hasMatch(textFieldValue.trim())) {
      return 'Invalid Email! Kindly input a valid email.';
    }
    return null;
  }

  static String? validatePassword(String? textFieldValue) {
    if (textFieldValue!.trim().isEmpty) {
      return 'Password can\'t be empty!';
    } else if (textFieldValue.trim().length < 8) {
      return 'Password can\'t be less than 8 characters!';
    }
    return null;
  }

  static String? validateAmount(String? textFieldValue) {
    final amountRegex = RegExp(r'\d');
    if (textFieldValue!.trim().isEmpty) {
      return 'Amount can\'t be empty!';
    } else if (!amountRegex.hasMatch(textFieldValue.trim()) ||
        textFieldValue.startsWith('0') ||
        double.tryParse(textFieldValue) == null) {
      return 'Invalid Amount! Kindly input a valid amount';
    } else if (textFieldValue.trim().length < 3) {
      return 'The minimum transaction amount is ₦100';
    }
    return null;
  }

  static String? validatePin(String? textFieldValue) {
    final amountRegex = RegExp(r'\d');
    if (textFieldValue!.trim().isEmpty) {
      return 'Pin can\'t be empty!';
    } else if (!amountRegex.hasMatch(textFieldValue.trim()) ||
        double.tryParse(textFieldValue) == null) {
      return 'Invalid pin input!';
    } else if (textFieldValue.trim().length < 4) {
      return 'Input a 4 digit pin.';
    }
    return null;
  }

  static String? validateFullname(String? textFieldValue) {
    final fullNameRegex = RegExp(r'^[a-z A-Z,.\-]+$');
    if (textFieldValue!.trim().isEmpty) {
      return 'Full name can\'t be empty!';
    } else if (textFieldValue.trim().length < 3 ||
        !fullNameRegex.hasMatch(textFieldValue)) {
      return 'Invalid full name! Kindly input your "Full name".';
    }
    return null;
  }
}
