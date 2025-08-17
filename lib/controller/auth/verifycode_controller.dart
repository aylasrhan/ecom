import 'package:ecom_app/core/constant/AppRoutesName.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

abstract class VerifyCodeController extends GetxController{
 checkcode();
  gotoresetPW();
}
class VerifyCodeControllerImp extends VerifyCodeController{
  

  late String verifycode;

  @override
 checkcode() {
   
  }

  
  
  @override
  gotoresetPW() {
   Get.offNamed(AppRoutesName.resetPW);
  }
  

}