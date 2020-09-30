import 'package:formz/formz.dart';

enum PasswordValidationError { empty }

class Password extends FormzInput<String, PasswordValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @overrid
  PasswordValidationError validator(String value) {
    return value?.isNotEmpty == true ? null : PasswordValidationError.empty;
  }
}