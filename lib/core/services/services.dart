import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService{
  late SharedPreferences sharpref;
  Future<MyServices> init()async{
   sharpref= await SharedPreferences.getInstance();
   return this; 
  }
}


Future<void> initialServices ()async{
 await Get.putAsync(()=>MyServices().init());
}