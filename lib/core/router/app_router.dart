import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/pokemon/domain/entities/pokemon_entity.dart';
import '../../features/pokemon/presentation/pokemon_detail/screens/pokemon_detail_screen.dart';
import '../../features/pokemon/presentation/pokemon_list/screens/pokemon_list_screen.dart';
import '../../features/pokemon/presentation/meta_data/screens/meta_data_screen.dart';

/// App Router Configuration using go_router
class AppRouter {
  static const String home = '/';
  static const String pokemonDetail = '/pokemon/:id';
  static const String meta = '/meta';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: home,
        name: 'home',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const PokemonListScreen(),
        ),
      ),
      GoRoute(
        path: pokemonDetail,
        name: 'pokemonDetail',
        pageBuilder: (context, state) {
          final pokemon = state.extra as PokemonEntity;
          return MaterialPage(
            key: state.pageKey,
            child: PokemonDetailScreen(pokemon: pokemon),
          );
        },
      ),
      GoRoute(
        path: meta,
        name: 'meta',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const MetaDataScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              'Page not found: ${state.matchedLocation}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go(home),
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    ),
  );
}

