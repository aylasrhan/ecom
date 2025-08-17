import 'package:ecom_app/core/class/crud.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

//إعداد الأدوات الأساسية وإتاحتها لجميع أجزاء التطبيق
//يقوم GetX بإنشاء نسخة واحدة (Singleton) من الكلاس Crud ويضعها في الذاكرة.
//الآن، أي كلاس آخر يحتاج إلى Crud يمكنه الحصول عليه باستخدام Get.find() بدلاً من إنشاء نسخة جديدة منه في كل مرة. هذا يوفر الموارد ويجعل الكود أنظف.
class Initialbinding extends Bindings{
  @override
  void dependencies() {
    Get.put(Crud());
  }

}

 