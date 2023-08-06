import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zai_system/View/forgotpassword.dart';
import 'package:zai_system/View/home_screen.dart';
import 'package:zai_system/View/loginscreen.dart';
import 'package:zai_system/View/signup.dart';
import 'package:zai_system/View/splashscreen.dart';
import 'package:zai_system/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 42, 0, 0),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        getPages: <GetPage>[
          GetPage(name: "/", page: () => const SplashScreen()),
          GetPage(name: "/home", page: () => const HomeScreen()),
          GetPage(name: "/signup", page: () => const VerificationScr()),
          GetPage(name: "/login", page: () => const LoginScreen()),
          GetPage(name: "/forgotpassword", page: () => const ForgotPScreen()),
        ]);
  }
}
