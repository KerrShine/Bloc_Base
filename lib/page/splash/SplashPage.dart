import 'package:flutter/material.dart';
import 'package:flutter_bloc_base/route/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // 延遲 5 秒後跳轉
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, RouteName.Home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: const Text(
        "Splash",
        style: TextStyle(fontSize: 24, color: Colors.black),
      ),
    );
  }
}
