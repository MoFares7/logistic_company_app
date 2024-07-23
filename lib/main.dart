import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prime_shippa_company/core/app_theme.dart';
import 'package:prime_shippa_company/features/auth/presentation/pages/login_screen.dart';
import 'package:prime_shippa_company/features/branch_manager/home/presentation/pages/home_screen.dart';
import 'package:prime_shippa_company/features/branch_manager/manager/presentation/pages/branch_managers_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      // systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Shippa Company',
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
        ],
      ),
      theme: AppTheme.light(),
      home: BranchManagerHomeScreen(),
    );
  }
}
