import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController {

goToPageLogin() ; 

}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToPageLogin() {
     Get.offAllNamed(AppRoutesName.login) ; 
  }

}