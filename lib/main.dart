import 'package:flutter/material.dart';
import 'package:interview_app/DataHandler/app_data.dart';
import 'package:interview_app/Screens/Sign_up_screen.dart';
import 'package:interview_app/Screens/main_screen.dart';
import 'package:interview_app/Screens/onboarding_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: OnBoardingScreen.id,
        routes: {
          OnBoardingScreen.id: (context) => OnBoardingScreen(),
          SignUpScreen.id: (context) => SignUpScreen(),
          MainScreen.id: (context) => MainScreen(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
