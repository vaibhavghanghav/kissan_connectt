import 'package:flutter/material.dart';
import 'package:kissan_connect/pages/book_equipment.dart';
import 'package:kissan_connect/pages/hire_worker.dart';
import 'package:kissan_connect/pages/home.dart';
import 'package:kissan_connect/pages/insurance_loan_page.dart';
import 'package:kissan_connect/pages/splash.dart';
import 'package:kissan_connect/pages/store_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: Splash(),
      // home: Home(),
      routes: {
        "/Home": (context) => Home(),
        "/HireWorker": (context) => HireWorker(),
        "/BookEquipment": (context) => BookEquipment(),
        "/splash": (context) => Splash(),
        "/store": (context) => StoreMain(),
        "/InsuranceLoanPage": (context) => InsuranceLoanPage(),
      },
    );
  }
}
