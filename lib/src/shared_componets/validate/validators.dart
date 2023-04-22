class validators {
  static bool isValidPassword(String password) {
    final regex = RegExp(r'^[0-9]+$');
    return password.length == 6 && regex.hasMatch(password);
  }

  static bool isVaildEmail(String email) {
    const regexEmail = r'[a-zA-Z0-9\+\.\_\%\-\+]{1,256}\@[a-zA-Z0-9]'
        r'[a-zA-Z0-9\-]{0,64}(\.[a-zA-Z0-9][a-zA-Z0-9\-]{0,25})+';
    return RegExp(regexEmail).hasMatch(email);
  }

  static bool isVaildPhone(String phone) {
    final regexPhone = RegExp(r'(0[1|2|3|4|5|6|7|8|9])+([0-9]{8})$');
    return (phone.length > 10 && phone.length <= 12) && regexPhone.hasMatch(phone);
  }
}
