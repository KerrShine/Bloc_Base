import 'package:flutter/material.dart';
import 'package:flutter_bloc_base/route/app_router.dart';
import 'package:flutter_bloc_base/route/app_router.dart' as MyRouter;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc Base',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: MyRouter.RouteName.Default,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50), // NEW
            backgroundColor: Color.fromRGBO(210, 210, 210, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.0),
            ),
            side: BorderSide(color: Colors.black),
            foregroundColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
