import 'package:example/core/routing/router_path.dart';
import 'package:example/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: RouterPath.home.path,
  routes: [
    GoRoute(
      path: RouterPath.home.path,
      pageBuilder: (context, state) =>
          NoTransitionPage(key: state.pageKey, child: const HomeScreen()),
    ),
  ],
);
