import 'package:go_router/go_router.dart';
import 'package:template/presentation/counter/counter_screen.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CounterScreen(),
    ),
  ],
);
