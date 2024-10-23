import 'package:e_commerce/config/route.dart';
import 'package:e_commerce/screens/mailscreen.dart';
import 'package:e_commerce/screens/product_detail.dart';
import 'package:e_commerce/themes/theme.dart';
import 'package:e_commerce/widgets/coustom_route.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name!.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage(), settings: settings);
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => MainPage(title: 'Home', key: UniqueKey(),), settings: settings);
        }
      },
      initialRoute: "MainPage",
    );
  }
}
