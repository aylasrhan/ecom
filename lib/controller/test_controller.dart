import 'package:ecom_app/core/class/statuesreq.dart';
import 'package:ecom_app/core/function/handilingcontrol.dart';
import 'package:ecom_app/data/datasource/remote/test.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class TestController extends GetxController{
  //الحصول على مصدر البيانات
  //  testData هنا هو حلقة الوصل بين الـ Controller و الـ API Backend.
TestData testData =TestData(Get.find());
  //it stores data coming from db
  List data=[];
  // حالة الطلب (لإظهار التحميل، النجاح، الفشل في الواجهة)
  late StatusReq statusereq;
  //دالة جلب البيانات من الخادم
  getData()async{

    statusereq=StatusReq.loading;
    //إرسال الطلب وانتظار الرد
  var  response=await testData.getData();
  //معالجة الرد وتحديد حالة الطلب الجديد
  statusereq=handilingData(response);
  if (StatusReq.success==statusereq) {
//  تعني 
//"اذهب إلى كائن الرد الذي استلمناه من الخادم، وداخل هذا الرد 
//(الذي هو الآن Map لأن الطلب نجح)، أحضر لي القيمة المرتبطة بالمفتاح الذي اسمه 'data'".
   if (response['status']=="success") {
      data.addAll(response['data']);
   } else {
    statusereq=StatusReq.failure;
   }
   
  }
  //تحديث الواجهة الرسومية
  update();
  }
  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
//بدلاً من إنشاء Crud جديدة، يستخدم Get.find() للحصول على النسخة التي تم وضعها في الذاكرة بواسطة Initialbinding. 
//هذا يربط الـ Controller بالخدمات (Service Layer) المسؤولة عن جلب البيانات.