import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import 'views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _routerConfig;

  @override
  void initState() {
    super.initState();
    _routerConfig = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => HomeView(),
          routes: [
            GoRoute(
              path: 'alipay',
              builder: (context, state) => AlipayView(),
            ),
            GoRoute(
              path: 'wechat-pay',
              builder: (context, state) => WeChatPayView(),
            ),
            GoRoute(
              path: 'bitcoin-wallet',
              builder: (context, state) => BitcoinWalletView(),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _routerConfig,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (context) => AppLocalizations.of(context).sponsors,
    );
  }

  @override
  void dispose() {
    _routerConfig.dispose();
    super.dispose();
  }
}
