import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:uny/data/mock_user.dart';
import 'package:uny/logic/feedback_data_provider.dart';
import 'package:uny/logic/user_provider.dart';
import 'package:uny/ui/screens/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));

  runApp(
    MultiProvider(
      providers: [
        Provider<FeedbackDataProvider>(create: (_) => FeedbackDataProvider()..init()),
        ChangeNotifierProvider<UserProvider>(create: (_) => UserProvider(mockUser)),
      ],
      child: const UnyApp(),
    ),
  );
}

class UnyApp extends StatelessWidget {
  const UnyApp({super.key});

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
