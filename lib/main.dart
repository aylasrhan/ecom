import 'package:ecom_app/binding.dart';
import 'package:ecom_app/binding/initialbinding.dart';
import 'package:ecom_app/core/localization/changelocal.dart';
import 'package:ecom_app/core/localization/translation.dart';
import 'package:ecom_app/core/services/services.dart';
import 'package:ecom_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController controller =Get.put(LocalController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      initialBinding: Initialbinding(),
      debugShowCheckedModeBanner: false,
      
      theme:controller.apptheme, 
      title: 'Flutter Demo',
     getPages:routes ,
      );
  }
}
