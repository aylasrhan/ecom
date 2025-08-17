import 'package:ecom_app/core/constant/AppTheme.dart';
import 'package:ecom_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

//الكود الذي قدمته هو عبارة عن متحكم (Controller) بسيط باستخدام GetX 
//لإدارة تغيير لغة التطبيق وحفظ هذا الاختيار في ذاكرة الجهاز (Shared Preferences) لكي يستمر عند إعادة فتح التطبيق.
class LocalController extends GetxController{
ThemeData apptheme = themeEnglish;

  Locale? language ;//بخزن فيه اللغة الحالية للجهاز
   MyServices myservices = Get.find();
   //دالة مسؤولة عن تغيير لغة التطبيق
   void changelanguage (String langcode){
    //متغير بيحمل اعدادات اللغة الجديدة
    Locale local =Locale(langcode);
    myservices.sharpref.setString("lang", langcode);
    Get.updateLocale(local);
    apptheme =langcode=="ar"?themeArabic:themeEnglish;
    Get.changeTheme(apptheme);
   }

   //اةل ما افتح ال appلازم يفتح بلغة الجهاز
   @override
  void onInit() {
    //بعرف متغير لقراءة القيمة المحزنة بالشيرد
   String? sharPrefLanguage =myservices.sharpref.getString("lang");
   //اذا كان المستخدم اختار عربي سابقا وتم حفظها بالشيرد
   if (sharPrefLanguage=="AR") {
    //فسيتم تعين المتغير المسؤول عن تخزين اللغة الحالية الى العربي
    language =Locale("AR");
    apptheme = themeArabic;
     
   }
   else if(sharPrefLanguage =="EN"){
    language =Locale("EN");
    apptheme = themeEnglish;
   }
   //والا بيكون عم يفتح التطبيق لاول مرة وبالتالي مافي شيردبريف مخزنة
   else {
     //خليلي اللغة تساوي لغة الجهاز
     language=Locale(Get.deviceLocale!.languageCode);
     apptheme = themeEnglish;//languageCode تقوم بارجاع رمز اللغة فقط
   }
   super.onInit();
  }
  //onInit()الملخص العام لوظيفة 

  //دالة onInit() هنا هي نقطة التحكم الرئيسية لتحديد اللغة التي سيتم عرض التطبيق بها عند تشغيله.
  // تقوم بالخطوات التالية:

   // محاولة استرداد اللغة المفضلة من ذاكرة الجهاز (Shared Preferences).
   // إذا تم العثور على لغة محفوظة ("AR" أو "EN")، يتم تعيينها كلغة للتطبيق.
   // إذا لم يتم العثور على لغة محفوظة (لأنها أول مرة يُفتح فيها التطبيق
   //، أو تم مسح البيانات)، فسيقوم التطبيق بمطابقة لغة الجهاز تلقائيًا.
   // أخيرًا، يتم استدعاء دالة onInit الخاصة بالكلاس الأب لإكمال عملية التهيئة.

 //هذا يضمن تجربة مستخدم سلسة، حيث يبدأ التطبيق باللغة المفضلة للمستخدم أو بلغة جهازه
 //، دون الحاجة إلى اختيارها يدويًا في كل مرة.


}