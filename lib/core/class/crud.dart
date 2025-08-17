import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecom_app/core/class/statuesreq.dart';
import 'package:ecom_app/core/function/checkinternet.dart';
import 'package:http/http.dart' as http;
//كل ما يتعلق بإرسال واستقبال البيانات من الإنترنت موجود داخل هذا الصندوق.
//يقابلهل بالباك getalldata
class Crud {
  Future<Either<StatusReq,Map>> postData(String linkurl,Map data)async{
   try {
     if (await checkInternet()) {
     var response= await http.post(Uri.parse(linkurl),body: data);
     if (response.statusCode==200||response.statusCode==201) {
       Map responsebody=jsonDecode(response.body);
       return right(responsebody);
     } else {
       return left(StatusReq.serverfailure);
     }
   } else {
     return left(StatusReq.offlinefailure);
   }
   } catch (_) {
     return left(StatusReq.serverfailure);
   }
  }
}


// هذا الكود هو رسالة خاصة يرسلها تطبيقك للمتجر. هذه الرسالة تقول: "أريد أن أرسل لك بعض البيانات، هل يمكنك استلامها؟".

    // قبل إرسال الرسالة: التطبيق يتأكد أولاً أن الإنترنت يعمل.

    // بعد إرسال الرسالة:

        // إذا وصلته الرسالة بنجاح: المتجر يرد عليك برسالة: "تمام، استلمت البيانات!".

        // إذا حدثت مشكلة (الإنترنت مقطوع، أو المتجر لا يعمل)، المتجر لا يستطيع الرد. التطبيق سيعرف أن هناك مشكلة ويخبرك عنها.

//  الربط بين Flutter و PHP

// المفهوم في Flutter	المفهوم المقابل في PHP
// TestData.getData()	function getAllData(...)
// crud.postData(AppLink.test, {})	$stmt->execute($values)
// response['data']	$data (بعد fetchAll)
// StatusReq.success	"status" => "success"
// StatusReq.failure	"status" => "failure"
// await (الانتظار)	تنفيذ الاستعلام على الخادم
// // 
// 
// 


