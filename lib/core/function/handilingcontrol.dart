import 'package:ecom_app/core/class/statuesreq.dart';

handilingData(response){
  if(response is StatusReq){
return response;
  }else{
    return StatusReq.success;
  }
}