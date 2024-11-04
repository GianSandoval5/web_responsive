import 'package:core_dashboard/shared/navigation/routes.dart';
import 'package:core_dashboard/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(context),
      initialRoute: Routes.entryPoint,
      routes: routerConfig,
    );
  }
}
