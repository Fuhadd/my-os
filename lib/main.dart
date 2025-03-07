import 'package:flutter/material.dart';
import 'package:my_os/screens/dashboard/bottom_navigation_screen.dart';
import 'package:my_os/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mca Mobile App',
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
      // navigatorKey: locator<NavigationHandler>().navigatorKey,
      theme: ThemeData(
        fontFamily: 'PhantomSans',
        useMaterial3: false,
        brightness: Brightness.light, // or Brightness.dark for dark theme
        colorScheme: const ColorScheme.light(
          // or ColorScheme.dark for dark theme
          primary: Colors.deepPurple,
          secondary: Colors.deepPurpleAccent,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        cardTheme: const CardTheme(
          color: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87),
          bodyMedium: TextStyle(color: Colors.black87),
        ),
      ),
      home: const BottomNavigationScreen(),
    );
  }
}
