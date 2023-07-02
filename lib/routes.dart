import 'package:get/get.dart';
import '../Core/Constant/routes.dart';
import '../Core/MiddleWare/mymiddleware.dart';
import '../View/Screen/ForgetPassword/reset_password.dart';
import '../View/Screen/auth/signup.dart';
import '../View/Screen/ForgetPassword/verify_code.dart';
import '../View/Screen/auth/verify_email.dart';
import 'View/Screen/Home/Booking/booking.dart';
import 'View/Screen/Home/Booking/succesbook.dart';
import 'View/Screen/Home/home.dart';
import '../View/Screen/language.dart';
import '../View/Screen/on_bording.dart';
import 'View/Screen/ForgetPassword/forgetpassword.dart';
import 'View/Screen/auth/singin_login.dart';
import 'View/Screen/ForgetPassword/success_resetpassword.dart';
import 'View/Screen/auth/success_signup.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRoutes.signup, page: () => const SignUp()),
  GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoutes.signin, page: () => const SignIn()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoutes.onBording, page: () => const OnBording()),
  GetPage(name: AppRoutes.verifyEmail, page: () => const VerifyEmail()),

  //////////////-----Home---///////////////////////////////

  GetPage(name: AppRoutes.home, page: () => const Home()),
  GetPage(name: AppRoutes.successBooking, page: () => const SuccesBooking()),
  GetPage(
      name: AppRoutes.bookingAppoiment, page: () => const BookingAppoiment()),
];
