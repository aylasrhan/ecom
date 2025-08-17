import 'package:ecom_app/core/class/statuesreq.dart';
import 'package:flutter/widgets.dart';

class HandlDataView extends StatelessWidget {
  final StatusReq statusereq;
  final Widget widget;
  const HandlDataView({
    super.key,
    required this.statusereq,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return statusereq == StatusReq.loading
        ? Center(child: Text("loading"))
        : statusereq == StatusReq.offlinefailure
        ? Center(child: Text("offlinefailure"))
        : statusereq == StatusReq.serverfailure
        ? Center(child: Text("serverfailure"))
        : statusereq == StatusReq.failure
        ? Center(child: Text("no data"))
        : widget;
  }
}
