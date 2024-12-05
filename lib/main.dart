import 'package:flutter/material.dart';
import 'package:inspection_control/clients_detail.dart';
import 'package:inspection_control/clients_list.dart';
import 'package:inspection_control/controllers/db_controller.dart';
import 'package:inspection_control/home_page.dart';
import 'package:inspection_control/inspection_detail.dart';
import 'package:inspection_control/inspection_list.dart';
import 'package:provider/provider.dart';

const homeRoute = "/home";
const inspecaoRoute = "/inspecaoList";
const clientsListRoute = "/clienteList";
const clientsDetailRoute = "/clienteDetail";
const inspecaoDetailRoute = "/inspecaoDetail";

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ClienteNotifier(),
        ),
        ChangeNotifierProvider(
          create: (context) => InspecaoNotifier(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF4CAF50),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF388E3C),
          foregroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF4CAF50),
          textTheme: ButtonTextTheme.primary,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2E7D32),
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Color(0xFF6D4C41),
          ),
          labelLarge: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF388E3C),
          ),
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.2),
          margin: const EdgeInsets.all(8),
          elevation: 4,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF4CAF50),
          foregroundColor: Colors.white,
        ),
      ),
      routes: {
        homeRoute: (context) => HomePage(),
        inspecaoRoute: (context) => const InspecaoListPage(),
        inspecaoDetailRoute: (context) => const InspecaoDetailPage(),
        clientsListRoute: (context) => const ClientsListPage(),
        clientsDetailRoute: (context) => const ClientsDetailPage(),
      },
      initialRoute: homeRoute,
    );
  }
}
