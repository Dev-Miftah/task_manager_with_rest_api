import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/splash_screen.dart';
import 'package:task_manager_app/ui/utility/colors.dart';

class TaskManagerApp extends StatefulWidget {
  const TaskManagerApp({super.key});

  static GlobalKey<NavigatorState>navigatorKey = GlobalKey<NavigatorState>();

  @override
  State<TaskManagerApp> createState() => _TaskManagerAppState();
}

class _TaskManagerAppState extends State<TaskManagerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Task Manager App',
        navigatorKey: TaskManagerApp.navigatorKey,
        theme: ThemeData(
          textTheme: const TextTheme(
            titleLarge: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor),
            titleSmall: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
              letterSpacing: 0.4,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
              fillColor: AppColors.whiteColor,
              filled: true,
              hintStyle: TextStyle(color: AppColors.grayColor.withOpacity(0.4)),
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.themeColor,
              foregroundColor: AppColors.whiteColor,
              fixedSize: const Size.fromWidth(double.maxFinite),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  foregroundColor: AppColors.grayColor,
                  textStyle: const TextStyle(fontWeight: FontWeight.w600))),
        ),
        home: const SplashScreen());
  }
}
