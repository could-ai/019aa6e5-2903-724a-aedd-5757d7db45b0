import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screens/main_screen.dart';
import 'screens/chat_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'پیام‌رسان ایرانی',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF673AB7)), // رنگ بنفش مشابه روبیکا
        useMaterial3: true,
        fontFamily: 'Vazir', // فرض بر این است که فونت وزیر اضافه شود، فعلاً فونت پیش‌فرض
      ),
      // تنظیمات زبان فارسی
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa', 'IR'), // فارسی
      ],
      locale: const Locale('fa', 'IR'), // اجبار به استفاده از فارسی
      
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        '/chat_detail': (context) => const ChatDetailScreen(),
      },
    );
  }
}
