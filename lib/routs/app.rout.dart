

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

enum RouteView {home, auth, unknown}



extension ActionRouteView on RouteView{
  Future go({bool replacment = false,bool clearAll = false})async{
    if (clearAll) {
      return Get.offAllNamed(name, predicate: (route) => false,);
    }else if(replacment){
      return Get.offNamed(name);

    }else {
      return Get.toNamed(name);
    }
  }
}