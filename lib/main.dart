import 'package:example/core/routing/routes.dart';
import 'package:example/core/services/service_locator.dart';
import 'package:example/core/theme/app_theme.dart';
import 'package:example/presentation/bloc/breed_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  ServiceLocator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<BreedBloc>())],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme,
        routerConfig: router,
      ),
    );
  }
}
