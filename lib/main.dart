import 'package:flutter/material.dart';
import 'package:slide_transition_module/screen/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Slide Transition Module",
        home: SplashScreen(),
      );
}
