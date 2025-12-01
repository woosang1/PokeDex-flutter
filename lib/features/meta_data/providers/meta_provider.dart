import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../domain/entities/meta_entity.dart';
import '../../../domain/usecases/meta_usecases.dart';
import '../../shared/providers/pokemon_providers.dart';

/// 메타데이터 상태
class MetaState {
  final List<GameMetaEntity> games;
  final String? selectedGame;
  final List<PokemonMetaEntity> pokemonRankings;
  final List<TeamCompositionEntity> teamCompositions;
  final List<ItemUsageEntity> itemUsage;
  final bool isLoading;
  final String? errorMessage;

  const MetaState({
    this.games = const [],
    this.selectedGame,
    this.pokemonRankings = const [],
    this.teamCompositions = const [],
    this.itemUsage = const [],
    this.isLoading = false,
    this.errorMessage,
  });

  MetaState copyWith({
    List<GameMetaEntity>? games,
    String? selectedGame,
    List<PokemonMetaEntity>? pokemonRankings,
    List<TeamCompositionEntity>? teamCompositions,
    List<ItemUsageEntity>? itemUsage,
    bool? isLoading,
    String? errorMessage,
  }) {
    return MetaState(
      games: games ?? this.games,
      selectedGame: selectedGame ?? this.selectedGame,
      pokemonRankings: pokemonRankings ?? this.pokemonRankings,
      teamCompositions: teamCompositions ?? this.teamCompositions,
      itemUsage: itemUsage ?? this.itemUsage,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// 메타데이터 Notifier
class MetaNotifier extends StateNotifier<MetaState> {
  final GetGameMetaData _getGameMetaData;
  final GetPokemonRankings _getPokemonRankings;
  final GetPopularTeamCompositions _getPopularTeamCompositions;
  final GetItemUsageRates _getItemUsageRates;

  MetaNotifier({
    required GetGameMetaData getGameMetaData,
    required GetPokemonRankings getPokemonRankings,
    required GetPopularTeamCompositions getPopularTeamCompositions,
    required GetItemUsageRates getItemUsageRates,
  })  : _getGameMetaData = getGameMetaData,
        _getPokemonRankings = getPokemonRankings,
        _getPopularTeamCompositions = getPopularTeamCompositions,
        _getItemUsageRates = getItemUsageRates,
        super(const MetaState());

  /// 게임 메타데이터 로드
  Future<void> loadGameMetaData() async {
    state = state.copyWith(isLoading: true, errorMessage: null);

    final result = await _getGameMetaData();

    result.fold(
      (failure) {
        state = state.copyWith(
          isLoading: false,
          errorMessage: failure.when(
            server: (message, statusCode) => message,
            network: (message) => message,
            cache: (message) => message,
            notFound: (message) => message,
            unknown: (message) => message,
          ),
        );
      },
      (games) {
        state = state.copyWith(
          isLoading: false,
          games: games,
          selectedGame: games.isNotEmpty ? games.first.gameName : null,
        );
        
        // 첫 번째 게임의 데이터 로드
        if (games.isNotEmpty) {
          loadGameData(games.first.gameName);
        }
      },
    );
  }

  /// 특정 게임의 데이터 로드
  Future<void> loadGameData(String gameName) async {
    state = state.copyWith(
      selectedGame: gameName,
      isLoading: true,
      errorMessage: null,
    );

    // 병렬로 데이터 로드
    final results = await Future.wait([
      _getPokemonRankings(gameName),
      _getPopularTeamCompositions(gameName),
      _getItemUsageRates(gameName),
    ]);

    final pokemonResult = results[0];
    final teamResult = results[1];
    final itemResult = results[2];

    // 에러 체크
    String? errorMessage;
    List<PokemonMetaEntity> pokemonRankings = [];
    List<TeamCompositionEntity> teamCompositions = [];
    List<ItemUsageEntity> itemUsage = [];

    pokemonResult.fold(
      (failure) => errorMessage = failure.when(
        server: (message, statusCode) => message,
        network: (message) => message,
        cache: (message) => message,
        notFound: (message) => message,
        unknown: (message) => message,
      ),
      (data) => pokemonRankings = data as List<PokemonMetaEntity>,
    );

    teamResult.fold(
      (failure) => errorMessage ??= failure.when(
        server: (message, statusCode) => message,
        network: (message) => message,
        cache: (message) => message,
        notFound: (message) => message,
        unknown: (message) => message,
      ),
      (data) => teamCompositions = data as List<TeamCompositionEntity>,
    );

    itemResult.fold(
      (failure) => errorMessage ??= failure.when(
        server: (message, statusCode) => message,
        network: (message) => message,
        cache: (message) => message,
        notFound: (message) => message,
        unknown: (message) => message,
      ),
      (data) => itemUsage = data as List<ItemUsageEntity>,
    );

    state = state.copyWith(
      isLoading: false,
      pokemonRankings: pokemonRankings,
      teamCompositions: teamCompositions,
      itemUsage: itemUsage,
      errorMessage: errorMessage,
    );
  }

  /// 게임 변경
  void selectGame(String gameName) {
    loadGameData(gameName);
  }
}

/// 메타데이터 Provider
final metaProvider = StateNotifierProvider<MetaNotifier, MetaState>((ref) {
  final getGameMetaData = ref.watch(getGameMetaDataUseCaseProvider);
  final getPokemonRankings = ref.watch(getPokemonRankingsUseCaseProvider);
  final getPopularTeamCompositions = ref.watch(getPopularTeamCompositionsUseCaseProvider);
  final getItemUsageRates = ref.watch(getItemUsageRatesUseCaseProvider);
  
  return MetaNotifier(
    getGameMetaData: getGameMetaData,
    getPokemonRankings: getPokemonRankings,
    getPopularTeamCompositions: getPopularTeamCompositions,
    getItemUsageRates: getItemUsageRates,
  );
});

