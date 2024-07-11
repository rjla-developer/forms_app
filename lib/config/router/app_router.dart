import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Screens:
import 'package:forms_app/presentation/screens/bloc_counter/bloc_counter_screen.dart';
import 'package:forms_app/presentation/screens/home_screen.dart';

final appRouter = GoRouter(initialLocation: "/", routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    name: "BlocCounterScreen",
    path: '/bloc',
    pageBuilder: (context, state) =>
        const MaterialPage(child: BlocCounterScreen()),
  ),
]);
