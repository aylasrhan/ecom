import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {

goToPageLogin() ; 

}

class SuccessSignUpControllerImp extends SuccessSignUpController {
  @override
  goToPageLogin() {
     Get.offAllNamed(AppRoutesName.login) ; 
  }

}