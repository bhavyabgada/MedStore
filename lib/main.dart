import 'package:flutter/material.dart';
import 'package:medstore/components/cart_products.dart';
import 'package:medstore/components/horizontal_listview.dart';
import 'package:medstore/details.dart';
import 'package:medstore/details2.dart';
import 'package:medstore/splash_screen_one.dart';
import 'package:provider/provider.dart';
import 'components/cart.dart';
import 'details.dart';
import 'package:medstore/details1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
            value: Products(),
        ),
        ChangeNotifierProvider.value(
            value: Orders(),),
        ChangeNotifierProvider.value(
            value: Gadgets()),
        ChangeNotifierProvider.value(
            value: ExtraMed()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MedLoc',
        theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.white),
        home: SplashScreenOne(),
        routes: {
          DetailPage.routeName: (context) => DetailPage(),
          DetailPage1.routeName: (context) => DetailPage1(),
          DetailPage2.routeName: (context) => DetailPage2()
        },
      ),
    );
  }
}

