import 'dart:io';

checkInternet()async{
  try{
var result=await InternetAddress.lookup("google.com");// يسمح بالتحقق من عناوين الشبكة.
if (result.isNotEmpty&&result[0].rawAddress.isNotEmpty) {
  return true;
}} on SocketException catch(_){return false;}
}
//وظيفتها التحقق مما إذا كان الجهاز متصلاً بالإنترنت أم لا
//. تعتمد هذه الدالة على محاولة الوصول إلى موقع معروف 
//(مثل google.com) وفحص نتيجة هذه المحاولة.