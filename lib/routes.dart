import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:ecom_app/core/middlewere/middleware.dart';
import 'package:ecom_app/test_view.dart';
import 'package:ecom_app/view/screen/auth/forggetPW/forgetPW.dart';
import 'package:ecom_app/view/screen/auth/forggetPW/resetPW.dart';
import 'package:ecom_app/view/screen/auth/forggetPW/successresetPW.dart';
import 'package:ecom_app/view/screen/auth/forggetPW/verifycodesignup.dart';
import 'package:ecom_app/view/screen/auth/login.dart';
import 'package:ecom_app/view/screen/auth/signup.dart';
import 'package:ecom_app/view/screen/auth/forggetPW/successSignUp.dart';
import 'package:ecom_app/view/screen/language.dart';
import 'package:ecom_app/view/screen/onboarding.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => Language(),middlewares: [MyMiddleWare()]),
  // GetPage(name: "/", page: ()=>TestView()),
  GetPage(name: AppRoutesName.login, page: () => LogIn()),
  GetPage(name: AppRoutesName.onboarding, page: () => OnBoarding()),
  GetPage(name: AppRoutesName.signup, page: () => SignUp()),
  GetPage(name: AppRoutesName.forgetPW, page: () => ForgetPW()),
  GetPage(name: AppRoutesName.resetPW, page: () => ResetPW()),
  GetPage(name: AppRoutesName.verifycodsignup, page: () => VerifyCodeSignup()),
  GetPage(
    name: AppRoutesName.successresetPW,
    page: () => SuccessResetPassword(),
  ),
  GetPage(name: AppRoutesName.successsignup, page: () => SuccessSignUp()),
];
