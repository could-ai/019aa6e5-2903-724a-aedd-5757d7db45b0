import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:couldai_user_app/home_page.dart';
import 'package:couldai_user_app/screens/chat_screen.dart';

void main() {
  runApp(const RubikaCloneApp());
}

class RubikaCloneApp extends StatelessWidget {
  const RubikaCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'روبیکا',
      debugShowCheckedModeBanner: false,
      // تنظیمات زبان فارسی
      locale: const Locale('fa', 'IR'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', 'IR'), // Farsi
        Locale('en', 'US'), // English
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF673AB7), // رنگ بنفش مشابه روبیکا
          primary: const Color(0xFF673AB7),
          secondary: const Color(0xFF03A9F4),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // در پروژه واقعی فونت وزیر یا ایران‌سنس استفاده می‌شود
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/chat': (context) => const ChatScreen(),
      },
    );
  }
}
