import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hackathon_2024/ui/router/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // .envを読み込めるように設定.
  await dotenv.load(fileName: 'dotenv');
  await Supabase.initialize(
    url: dotenv.get('VAR_URL'),
    anonKey: dotenv.get('VAR_ANONKEY'),
  );
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
      ),
      routerConfig: ref.watch(appRouterProvider),
    );
  }
}
