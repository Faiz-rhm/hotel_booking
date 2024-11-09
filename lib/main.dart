import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/route/app_router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRoute = ref.watch(globalGoRouteProvider);

    return MaterialApp.router(
      title: 'Hotel Booking App',
      debugShowCheckedModeBanner: false,
      routerConfig: goRoute,
    );
  }
}
