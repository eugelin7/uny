import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uny/ui/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uny test task',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        textTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'SFProDisplay',
            ),
        primaryTextTheme: ThemeData.light().textTheme.apply(
              fontFamily: 'SFProDisplay',
            ),
      ),
      home: const MainScreen(),
    );
  }
}
