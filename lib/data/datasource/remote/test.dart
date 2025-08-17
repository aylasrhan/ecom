
import 'package:ecom_app/core/class/crud.dart';
import 'package:ecom_app/linkapi.dart';

class TestData {
  Crud crud ;
  TestData(this.crud);
  getData()async{
    var response=await crud.postData(AppLink.test, {});
   return response.fold((l)=>l, (r)=>r);
  }
}
//     تهيئة: يبدأ التطبيق، وInitialbinding يجهز Crud في الذاكرة.

    // طلب: TestController يقرر أنه يحتاج إلى بيانات.

    // توجيه: TestController يطلب من TestData (باستخدام getData()) إرسال الطلب.

    // إرسال: TestData يستخدم Crud (الذي تم حقنه) لإرسال طلب POST إلى الـ Backend.

    // معالجة: الـ Backend يستلم الطلب، يتصل بقاعدة البيانات، ويجلب جميع المستخدمين.

    // رد: الـ Backend يرسل البيانات على هيئة JSON كرد على الطلب.

    // استقبال: TestData يستلم الرد، ويستخدم fold لمعالجته (إما نجاح أو فشل).

