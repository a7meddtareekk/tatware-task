import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_tatware/core/utils/app_theme.dart';
import 'package:task_tatware/presentation/controller/task_cubit.dart';
import 'package:task_tatware/presentation/screens/Home.dart';
import 'package:task_tatware/presentation/screens/chats.dart';
import 'package:task_tatware/presentation/screens/get_started.dart';
import 'package:task_tatware/presentation/screens/layout.dart';
import 'package:task_tatware/presentation/screens/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const StartScreen(),
      ),
    );
  }
}
