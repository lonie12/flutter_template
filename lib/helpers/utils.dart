import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:mainuse/helpers/constants.dart';

// Show custom snackbar
void showSnackBar(BuildContext context, String text, {Color? color}) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: color ?? dangerColor,
    ),
  );
}

// Navigator Navigate to screens
void navigateTo(BuildContext context, Widget to) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => to,
    ),
  );
}

void closeAllNavigateTo(BuildContext context, Widget to) {
  Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (context) => to),
    (route) => true,
  );
}

// String validaor
abstract class StringValidator {
  bool isValid(String value);
}

// Regex Validator
class RegexValidator implements StringValidator {
  RegexValidator({required this.regexSource});

  final String regexSource;

  @override
  bool isValid(String value) {
    try {
      final RegExp regex = RegExp(regexSource);
      final Iterable<Match> matches = regex.allMatches(value);

      for (final match in matches) {
        if (match.start == 0 && match.end == value.length) {
          return true;
        }
      }

      return false;
    } catch (e) {
      assert(false, e.toString());
      return true;
    }
  }
}

// Validate email
class EmailSubmitRegexValidator extends RegexValidator {
  EmailSubmitRegexValidator()
      : super(
            regexSource: r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)');
}

// Validate password
class PasswordSubmitRegexValidator extends RegexValidator {
  PasswordSubmitRegexValidator()
      : super(
            regexSource:
                r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*();:,."-_/#?&])[A-Za-z\d@$!%*();:,."-_/#?&]{8,}$');
}

// Validate password
class PhoneSubmitRegexValidator extends RegexValidator {
  PhoneSubmitRegexValidator()
      : super(
            regexSource:
                r'^(?:\+228|00228)?(?:(22[2-7]|23[2-3]|24[4-5]|255|26[6-7]|277|70[0-5]|79[7-9])\d{5}|(9[0-36-9])\d{6})$');
}

// Non empty input validator
class NonEmptyStringValidator extends StringValidator {
  @override
  bool isValid(String value) {
    return value.isNotEmpty;
  }
}

// Non empty integer validator
class NonEmptyIntegerValidator {
  NonEmptyIntegerValidator({required this.value});
  final String value;
  bool isValid(String value) {
    return int.parse(value) != 0;
  }
}

// Integer validation
class IntegerValidator {
  IntegerValidator({required this.value});
  final String value;
  bool isValid(String value) {
    return int.tryParse(value) is int;
  }
}

// Min length String validator
class MinLengthStringValidator extends StringValidator {
  MinLengthStringValidator(this.minLength);
  final int minLength;

  @override
  bool isValid(String value) {
    return value.length >= minLength;
  }
}

//Image Picker function to get image from gallery
Future<File?> getImageFromCamera() async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickImage(source: ImageSource.camera);
  if (pickedFile != null) {
    return File(pickedFile.path);
  }
  return null;
}

//Image Picker function to get image from camera
Future<File?> getVideoFromCamera() async {
  final picker = ImagePicker();
  final pickedFile = await picker.pickVideo(source: ImageSource.camera);
  if (pickedFile != null) {
    return File(pickedFile.path);
  }
  return null;
}
