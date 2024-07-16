import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/cubit/cubit/shape_cubit.dart';
import 'package:flutter_application_cubit/main_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Adjust import based on your filename

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFCACDCA)),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => Task4Cubit(),
        child: MainScreen(), // Assuming your main screen is MainScreen
      ),
    );
  }
}
