import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

abstract class VerifyCodeSignUpController extends GetxController{
 checkcode();
  gotosuccesssignup();
}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController  
{
  

  late String verifycode;

  @override
 checkcode() {
   
  }

  
  
  @override
  gotosuccesssignup() {
   Get.offNamed(AppRoutesName.successsignup);
  }
  

}