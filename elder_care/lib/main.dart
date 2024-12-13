import 'package:elder_care/eldercare.dart';
import 'package:elder_care/screens/ServiceProviderDash.dart';
import 'package:elder_care/screens/ChooseRolePage.dart';
import 'package:elder_care/screens/admin/MenuDashboard.dart';
import 'package:elder_care/screens/customer/contact.dart';
import 'package:elder_care/screens/customer/homepage.dart';
import 'package:elder_care/screens/customer/meal_plan.dart';
import 'package:elder_care/screens/login_page.dart';
import 'package:elder_care/screens/merchant/serviceprovidehome.dart';
import 'package:elder_care/screens/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(
              role: '',
            ),
        '/role': (context) => ChooseRolePage(),
        //'/Home': (context) => UserDashboard(),
        '/contact': (context) => HelpContactPage(),
        '/admin': (context) => ServiceProvidePage(
            serviceProviderId: '4', serviceProviderName: 'Sachini'),
        //'/register': (context) => SignupPage(),
        //'/profile': (context) => UserProfile(),
        //'/packages': (context) => PackagesPage(),
        '/menu': (context) => MenuDashboard(),
        //'/signup': (context) => SignupPage(),
        '/meal': (context) => DietaryConsultation(),
      },
    );
  }
}