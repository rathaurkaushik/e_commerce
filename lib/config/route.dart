import 'package:e_commerce/screens/mailscreen.dart';
import 'package:flutter/material.dart';


class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{'/': (_) => MainPage(key: UniqueKey(), title: '',),


      // '/detail': (_) => ProductDetailPage()
    };
  }
}
