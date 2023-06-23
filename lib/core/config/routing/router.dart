import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:ososs_test/core/config/routing/router_config.dart';
import 'package:ososs_test/error_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ososs_test/features/home/presentation/manager/home_cubit.dart';
import 'package:ososs_test/features/home/presentation/pages/home.dart';

import '../../../features/animation/presentation/pages/animation_page.dart';
import '../../../features/app/pages/splash_screen.dart';
import '../../../features/pokémon/presentation/manager/pokemons_bloc.dart';
import '../../../features/pokémon/presentation/pages/pokemons_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

class GRouter {
  static GoRouter get router => _router;

  static RouterConfiguration get config => _config;

  static final RouterConfiguration _config = RouterConfiguration.init();

  static final GoRouter _router = GoRouter(
    initialLocation: _config.kRootRoute,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        path: _config.kRootRoute,
        pageBuilder: (context, state) =>
            _builderPage(
              child: const SplashScreen(),
              state: state,
            ),
      ),
      GoRoute(
        path: _config.kHomeRoute,
        pageBuilder: (context, state) =>
            _builderPage(
              child: BlocProvider<HomeCubit>(
                create: (context) => GetIt.I<HomeCubit>(),
                child: const HomePage(),
              ),
              state: state,
            ),
      ),
      GoRoute(
        path: _config.kAnimationRoute,
        pageBuilder: (context, state) =>
            _builderPage(
              child: BlocProvider.value(
                value: state.extra as HomeCubit,
                child: const AnimationPage(),
              ),
              state: state,
            ),
      ),
      GoRoute(
        path: _config.kPokemonRoute,
        pageBuilder: (context, state) =>
            _builderPage(
              child: BlocProvider<PokemonsBloc>(
                create: (context) => GetIt.I<PokemonsBloc>(),
                child: const PokemonsPage(),
              ),
              state: state,
            ),
      )
    ],
    errorBuilder: (context, state) => ErrorScreen(exception: state.error),
  );

  static Page<dynamic> _builderPage<T>({required Widget child, required GoRouterState state}) {
    if (Platform.isIOS) {
      return CupertinoPage<T>(child: child, key: state.pageKey);
    } else {
      return MaterialPage<T>(child: child, key: state.pageKey);
    }
  }
}
