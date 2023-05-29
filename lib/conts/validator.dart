import 'package:intl/intl.dart';

class Validator {
  dynamic validateEmail(String? value) {
    String pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) {
      return 'Email cannot be empty.';
    } else if (!regex.hasMatch(value)) {
      return 'Please enter a valid email address.';
    }
    null;
  }

  validatePassWord(String? value) {
    String pattern = r'^(?=.*?[0-9]).{6,30}$';
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) {
      return 'Password cannot be empty';
    } else if (!regex.hasMatch(value)) {
      return 'Your password must be at least 6-30 \ncharacters long with a number.';
    }
    null;
  }

  // confirmPassWordValidation(String? value) {
  //   if (value!.isEmpty) {
  //     'Password cannot be empty';
  //   } else {
  //     if (validatePassWord(value.trim()) != value) {
  //       return 'Password does not match';
  //     }
  //   }
  //
  //   return null;
  // }

  validateName(String? value) {
    if (value!.isEmpty) {
      'Please enter a name.';
    } else {
      return null;
    }
  }

  String? validateNumber(String? value) {
    String pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return 'Please enter a number.';
    } else {
      return null;
    }
  }

  // for any other validation required
  validateOthers(String value) {
    if (value.isEmpty) {
      return 'Field must not be empty.';

      //showToast(msg: 'Field must not be empty.', status: false);
    } else {
      return null;
    }
  }

  String validateCode(String value) {
    String pattern = r'^[0-9]{4}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Code must be 4 numbers.';
    } else {
      return value;
    }
  }
}

String humanReadableDate(DateTime dateTime) {
  return DateFormat.yMMMEd().format(dateTime);
}

String humanReadableDateTime(DateTime dateTime) {
  return DateFormat.yMMMEd().add_Hms().format(dateTime);
}
