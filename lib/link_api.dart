class AppLink {
  static const String serverLink = "http://192.168.1.5/dentist_backend";

  //==========================Auth===============================

  static const String signupLink = "$serverLink/Auth/signup.php";
  static const String verifyemail = "$serverLink/Auth/verifycode.php";
  static const String signinLink = "$serverLink/Auth/signin.php";
  static const String resendLink = "$serverLink/Auth/resend.php";

  //==========================ForgetPassword==========================

  static const String checkEmailLink =
      "$serverLink/Forgetpassword/check_email.php";
  static const String verifyPassCodeLink =
      "$serverLink/Forgetpassword/verify_pass_code.php";
  static const String resetPassLink =
      "$serverLink/Forgetpassword/reset_password.php";

  //==========================ForgetPassword==========================

  static const String glryRoot = "$serverLink/Upload/";
  static const String getGlry = "$serverLink/gallery.php";
}
