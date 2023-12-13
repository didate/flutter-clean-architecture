import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/config/config.dart';
import 'package:flutter_clean_architecture/core/routing/route.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
      url: Config.supabaseUrl,
      anonKey: Config.supabaseAnnoKey,
      authFlowType: AuthFlowType.pkce);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 82, 9, 206)),
        useMaterial3: true,
      ),
      routes: routes,
    );
  }
}
