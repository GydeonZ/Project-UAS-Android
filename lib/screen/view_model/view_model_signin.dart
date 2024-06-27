import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class SignInViewModel with ChangeNotifier {
  final formKeySignin = GlobalKey<FormState>();
  final TextEditingController masuk = TextEditingController();
  ValueNotifier<bool> isButtonEnabled = ValueNotifier<bool>(false);
  bool isPasswordVisible = false;
  bool heightContainer = false;

  SignInViewModel() {
    masuk.addListener(_validateInput);
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email tidak boleh kosong';
    } else if (!EmailValidator.validate(value)) {
      return 'Format email salah';
    }
    return null;
  }

  String? validatePhone(String value) {
    if (value.isEmpty) {
      return 'Nomor tidak boleh kosong';
    } else if (!value.startsWith('0')) {
      return 'Nomor harus diawali 0';
    } else if (value.length < 10) {
      return 'Nomor minimal 10 digit';
    } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Nomor hanya boleh mengandung angka';
    }
    return null;
  }

  String? validateEmailOrPhone(String value) {
    if (value.isEmpty) {
      return 'Email atau Nomor Ponsel tidak boleh kosong';
    } else if (EmailValidator.validate(value)) {
      return validateEmail(value);
    } else if (RegExp(r'^[0-9]+$').hasMatch(value)) {
      return validatePhone(value);
    } else {
      return 'Masukkan Email atau Nomor Ponsel yang valid';
    }
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void _validateInput() {
    isButtonEnabled.value = masuk.text.isNotEmpty;
  }

  void setUlangGender() {
    // Reset gender selection logic if necessary
  }

  void setAgreePrivasi(bool value) {
    // Update agree privacy logic if necessary
  }
}