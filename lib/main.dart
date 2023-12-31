import 'package:ecommerce_application/features/login/presentation/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/sign_up/presentation/screen/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.RouteName,
        routes: {
          LoginScreen.RouteName: (context) => LoginScreen(),
          SignUpScreen.RouteName: (context) => SignUpScreen(),
        },
      ),
    );
  }
}
