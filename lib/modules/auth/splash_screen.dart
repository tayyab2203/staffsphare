import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../core/constants/app_colors.dart';
// import 'login_screen.dart'; // Next step

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToNext();
  }

  void _goToNext() async {
    await Future.delayed(const Duration(seconds: 2));
    // Navigator.pushReplacement(
    // context,
    // MaterialPageRoute(builder: (_) => const LoginScreen()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lottie/fingerprint.json', height: 280),
            const SizedBox(height: 20),

            // Text(
            //   "StaffSphere",
            //   style: const TextStyle(
            //     color: Colors.white,
            //     fontSize: 32,
            //     fontWeight: FontWeight.bold,
            //   ).animate().fadeIn(duration: 800.ms).scale(),
            // ),
            Text(
              "StaffSphere",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(duration: 800.ms).scale(),

            const SizedBox(height: 10),

            Text(
              "AI-Powered Employee Management",
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ).animate().fadeIn(duration: 1200.ms),
          ],
        ),
      ),
    );
  }
}
