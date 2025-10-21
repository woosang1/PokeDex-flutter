# 🎮 Pokédex - Flutter 2025 Edition

**2025년 최신 Flutter 아키텍처와 베스트 프랙티스를 적용한 프로덕션 레디 포켓몬 조회 앱**

[![Flutter](https://img.shields.io/badge/Flutter-3.9.0-02569B?logo=flutter)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?logo=dart)](https://dart.dev)
[![Riverpod](https://img.shields.io/badge/Riverpod-2.6.1-00ADD8)](https://riverpod.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## 🎯 프로젝트 개요

**Clean Architecture**와 **Feature-First** 구조를 적용한 현대적인 Flutter 앱입니다. 
실제 [PokéAPI](https://pokeapi.co/)를 사용하여 포켓몬 정보를 조회하고, 
**Riverpod**, **Freezed**, **Dio**, **go_router** 등 최신 기술 스택을 활용합니다.

> 🚀 **Production Ready**: 실제 프로덕션 환경에 배포 가능한 코드 품질과 구조

## ✨ 주요 기능

### 핵심 기능
- 🔍 **포켓몬 검색 & 필터링**: 세대별, 타입별 고급 필터링
- 📱 **무한 스크롤**: 자연스러운 페이지네이션
- 🎨 **타입별 색상 테마**: 18개 포켓몬 타입별 동적 색상
- 📊 **능력치 시각화**: 인터랙티브 차트와 프로그레스 바
- 🔄 **Pull-to-Refresh**: 데이터 새로고침
- 🌐 **오프라인 대응**: 에러 핸들링 및 재시도 로직

### 기술적 특징
- ⚡ **반응형 상태 관리**: Riverpod 2.x
- 🛡️ **타입 안전성**: Freezed 불변 모델 + Either 패턴
- 🏗️ **확장 가능한 구조**: Clean Architecture
- 🧪 **테스트 용이성**: 의존성 주입 패턴
- 🎯 **성능 최적화**: 효율적인 위젯 리빌드

## 🛠 기술 스택

### Core Technologies
- **Flutter 3.9+** - 크로스 플랫폼 UI 프레임워크
- **Dart 3.0+** - 타입 안전한 프로그래밍 언어
- **Material Design 3** - 최신 디자인 시스템

### State Management & Architecture
- **[Riverpod 2.6.1](https://riverpod.dev)** - 차세대 상태 관리
  - Provider 패턴으로 의존성 주입
  - 컴파일 타임 타입 안전성
  - 테스트 친화적
- **Clean Architecture** - 레이어 분리 (Domain, Data, Presentation)
- **Feature-First** - 기능별 모듈화 구조

### Data & Networking
- **[Dio 5.7.0](https://pub.dev/packages/dio)** - 고급 HTTP 클라이언트
  - Interceptors로 로깅 및 에러 처리
  - Timeout 관리
- **[Freezed 2.5.7](https://pub.dev/packages/freezed)** - 불변 데이터 모델
  - Union Types
  - Pattern Matching
  - Code Generation
- **[Dartz 0.10.1](https://pub.dev/packages/dartz)** - 함수형 프로그래밍
  - Either 패턴으로 에러 처리
  - 타입 안전한 결과 처리

### Navigation & Utils
- **[go_router 14.6.2](https://pub.dev/packages/go_router)** - 선언적 라우팅
- **[Logger 2.5.0](https://pub.dev/packages/logger)** - 구조화된 로깅
- **json_serializable** - JSON 직렬화/역직렬화

### Development Tools
- **build_runner** - 코드 생성
- **riverpod_generator** - Riverpod 코드 생성
- **mockito** - 유닛 테스트 Mock

## 📱 화면 구성

### 1. 포켓몬 리스트 화면
- 포켓몬 목록을 카드 형태로 표시
- 포켓몬 이미지, 이름, 번호, 타입 정보 표시
- 무한 스크롤을 통한 페이지네이션
- Pull-to-refresh 기능

### 2. 포켓몬 상세 화면
- 포켓몬의 고해상도 이미지 표시
- 기본 정보 (키, 무게, 타입)
- 능력치를 프로그레스 바로 시각화
- 특성 정보 표시

## 🚀 시작하기

### 사전 요구사항
- Flutter SDK 3.9.0 이상
- Dart 3.0 이상
- Android Studio / VS Code (Flutter 플러그인)

### 설치 및 실행

```bash
# 1. 저장소 클론
git clone <repository-url>
cd PokeDex-flutter

# 2. 의존성 설치
flutter pub get

# 3. 코드 생성 (Freezed, JSON Serializable)
flutter pub run build_runner build --delete-conflicting-outputs

# 4. 앱 실행
flutter run

# 또는 자동 빌드 스크립트 사용
./build.sh
```

### 코드 생성 (개발 중)

Freezed나 모델을 수정한 경우:

```bash
# 한 번만 생성
flutter pub run build_runner build --delete-conflicting-outputs

# 파일 변경 감지 모드 (권장)
flutter pub run build_runner watch --delete-conflicting-outputs
```

### 플랫폼별 빌드

```bash
# Android (Debug)
flutter build apk --debug

# Android (Release)
flutter build apk --release

# iOS (Debug - macOS 전용)
flutter build ios --debug --no-codesign

# iOS (Release - macOS 전용)
flutter build ios --release --no-codesign

# macOS (Debug)
flutter build macos --debug

# macOS (Release)
flutter build macos --release

# Web
flutter build web --release
```

### 코드 분석 및 테스트

```bash
# 정적 분석
flutter analyze

# 테스트 실행
flutter test

# 코드 커버리지
flutter test --coverage
```

## 🏗️ 프로젝트 아키텍처

### Clean Architecture + Feature-First

```
lib/
├── main.dart                           # 앱 엔트리 포인트 (ProviderScope)
│
├── core/                               # 🔧 Core Layer - 공통 기능
│   ├── constants/
│   │   └── app_constants.dart          # 앱 전역 상수
│   ├── error/
│   │   ├── exceptions.dart             # Exception 클래스
│   │   └── failures.dart               # Failure (Freezed)
│   ├── network/
│   │   └── dio_client.dart             # Dio + Interceptors
│   ├── router/
│   │   └── app_router.dart             # go_router 설정
│   └── utils/
│       └── typedef.dart                # 타입 별칭 (ResultFuture 등)
│
└── features/                           # 🎯 Features - 기능별 모듈
    └── pokemon/
        ├── data/                       # 📊 Data Layer
        │   ├── datasources/
        │   │   └── pokemon_remote_datasource.dart
        │   ├── models/                 # Freezed + JSON Serializable
        │   │   ├── pokemon_model.dart
        │   │   ├── pokemon_model.freezed.dart
        │   │   └── pokemon_model.g.dart
        │   └── repositories/
        │       └── pokemon_repository_impl.dart
        │
        ├── domain/                     # 🎯 Domain Layer - 비즈니스 로직
        │   ├── entities/               # 핵심 엔티티 (Freezed)
        │   │   ├── pokemon_entity.dart
        │   │   └── filter_entity.dart
        │   ├── repositories/           # Repository 인터페이스
        │   │   └── pokemon_repository.dart
        │   └── usecases/               # Use Cases (SRP)
        │       ├── get_pokemon_list.dart
        │       ├── get_pokemon_by_id.dart
        │       └── get_pokemon_list_with_details.dart
        │
        └── presentation/               # 🎨 Presentation Layer
            ├── providers/              # Riverpod Providers
            │   ├── pokemon_providers.dart
            │   ├── pokemon_list_provider.dart
            │   └── filter_provider.dart
            ├── screens/
            │   ├── pokemon_list_screen.dart
            │   └── pokemon_detail_screen.dart
            └── widgets/
                ├── pokemon_card_widget.dart
                ├── filter_bottom_sheet.dart
                └── loading_widget.dart
```

### 아키텍처 흐름

```
UI (Presentation) 
    ↓ (Riverpod Provider 호출)
Use Cases (Domain)
    ↓ (Repository 인터페이스 호출)
Repository Implementation (Data)
    ↓ (Data Source 호출)
Remote Data Source (Data)
    ↓ (Dio HTTP 요청)
API Response
    ↓ (모델로 파싱)
Entity (Domain) ← 변환 ← Model (Data)
```

## 📱 스크린샷
<img src="screenshots/1.png" width="350" alt="사진1">  
<img src="screenshots/2.png" width="350" alt="사진1">  
---

## 📦 주요 패키지

### 프로덕션 의존성
```yaml
dependencies:
  # State Management
  flutter_riverpod: ^2.6.1          # 상태 관리
  riverpod_annotation: ^2.6.1       # Riverpod 어노테이션
  
  # Data Models
  freezed_annotation: ^2.4.4        # 불변 모델 어노테이션
  json_annotation: ^4.9.0           # JSON 직렬화
  
  # Networking
  dio: ^5.7.0                       # HTTP 클라이언트
  retrofit: ^4.4.1                  # REST API 클라이언트
  
  # Navigation
  go_router: ^14.6.2                # 선언적 라우팅
  
  # Functional Programming
  dartz: ^0.10.1                    # Either, Option 등
  
  # Utils
  logger: ^2.5.0                    # 로깅
```

### 개발 의존성
```yaml
dev_dependencies:
  # Code Generation
  build_runner: ^2.4.13
  freezed: ^2.5.7
  json_serializable: ^6.8.0
  riverpod_generator: ^2.6.2
  retrofit_generator: ^9.1.4
  
  # Testing
  mockito: ^5.4.4
  flutter_test:
    sdk: flutter
  
  # Linting
  flutter_lints: ^5.0.0
```

## 📚 학습 포인트

### 아키텍처 패턴
- ✅ **Clean Architecture** - 레이어 분리 및 의존성 규칙
- ✅ **Feature-First** - 기능별 모듈화
- ✅ **Repository Pattern** - 데이터 소스 추상화
- ✅ **Use Case Pattern** - 비즈니스 로직 캡슐화
- ✅ **SOLID Principles** - 객체지향 설계 원칙

### 상태 관리
- ✅ **Riverpod 2.x** - Provider 패턴
- ✅ **StateNotifier** - 복잡한 상태 로직
- ✅ **의존성 주입** - Provider를 통한 DI
- ✅ **타입 안전성** - 컴파일 타임 검증

### 데이터 처리
- ✅ **Freezed** - 불변 데이터 모델
- ✅ **Union Types** - 타입 안전한 상태 표현
- ✅ **JSON Serialization** - 자동 직렬화/역직렬화
- ✅ **Either Pattern** - 함수형 에러 처리

### 네트워킹
- ✅ **Dio** - 고급 HTTP 클라이언트
- ✅ **Interceptors** - 요청/응답 로깅
- ✅ **Error Handling** - 타입별 에러 처리
- ✅ **Timeout 관리** - 네트워크 안정성

### UI/UX
- ✅ **Material Design 3** - 최신 디자인 시스템
- ✅ **Responsive UI** - 다양한 화면 크기 대응
- ✅ **Custom Widgets** - 재사용 가능한 컴포넌트
- ✅ **Hero Animations** - 화면 전환 애니메이션
- ✅ **go_router** - 선언적 네비게이션

### 코드 품질
- ✅ **Code Generation** - build_runner 활용
- ✅ **Linting** - 엄격한 코드 규칙
- ✅ **Type Safety** - 강타입 활용
- ✅ **Testability** - 테스트 가능한 구조

## 🌟 핵심 특징

### 🏗️ 아키텍처
- **Clean Architecture** - 테스트 가능하고 유지보수 쉬운 구조
- **Feature-First** - 기능별 모듈화로 확장성 극대화
- **Dependency Injection** - Riverpod Provider 패턴
- **Separation of Concerns** - 레이어별 명확한 책임 분리

### 🛡️ 타입 안전성
- **Freezed Union Types** - 컴파일 타임 타입 검증
- **Either Pattern** - 타입 안전한 에러 처리
- **Strong Typing** - Dart 3.0+ 타입 시스템 활용
- **Null Safety** - 런타임 에러 방지

### ⚡ 성능
- **Efficient State Management** - Riverpod의 최적화된 리빌드
- **Lazy Loading** - 무한 스크롤 및 페이지네이션
- **Image Caching** - 네트워크 이미지 캐싱
- **Optimized Rendering** - const 위젯 활용

### 🧪 테스트 용이성
- **Mockable Dependencies** - Provider 기반 DI
- **Testable Architecture** - 레이어별 독립 테스트
- **Repository Pattern** - 데이터 소스 모킹 가능
- **Use Case Isolation** - 비즈니스 로직 단위 테스트

### 🎨 UI/UX
- **Material Design 3** - 최신 디자인 가이드라인
- **Responsive Design** - 모든 화면 크기 지원
- **Smooth Animations** - Hero, Implicit 애니메이션
- **Accessibility** - 접근성 고려한 UI

### 📱 크로스 플랫폼
- **Android** - 네이티브 성능
- **iOS** - 네이티브 성능
- **macOS** - 데스크톱 지원
- **Web** - 브라우저 지원

## 🔑 주요 디자인 패턴

### Repository Pattern
```dart
// 인터페이스 정의 (Domain)
abstract class PokemonRepository {
  ResultFuture<List<PokemonEntity>> getPokemonList();
}

// 구현체 (Data)
class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;
  // ...
}
```

### Use Case Pattern
```dart
class GetPokemonList {
  final PokemonRepository repository;
  
  ResultFuture<List<PokemonEntity>> call({
    required int offset,
    required int limit,
  }) async {
    return await repository.getPokemonList(
      offset: offset,
      limit: limit,
    );
  }
}
```

### Provider Pattern (Riverpod)
```dart
final pokemonListProvider = 
    StateNotifierProvider<PokemonListNotifier, PokemonListState>((ref) {
  final useCase = ref.watch(getPokemonListUseCaseProvider);
  return PokemonListNotifier(getPokemonList: useCase);
});
```

### Either Pattern (Error Handling)
```dart
typedef ResultFuture<T> = Future<Either<Failure, T>>;

// 사용 예시
final result = await getPokemon(id);
result.fold(
  (failure) => _handleError(failure),
  (pokemon) => _showPokemon(pokemon),
);
```

## 🔮 향후 개선 계획

- [ ] Unit Tests 작성
- [ ] Integration Tests 추가
- [ ] Widget Tests 구현
- [ ] CI/CD 파이프라인 구축
- [ ] 다국어 지원 (i18n)
- [ ] 다크 모드
- [ ] 오프라인 캐싱 (Hive/SQLite)
- [ ] 검색 기능 강화
- [ ] 즐겨찾기 기능
- [ ] 포켓몬 비교 기능

## 🤝 기여하기

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📚 참고 자료

### 공식 문서
- [Flutter Documentation](https://docs.flutter.dev/)
- [Riverpod Documentation](https://riverpod.dev/)
- [Freezed Documentation](https://pub.dev/packages/freezed)
- [Dio Documentation](https://pub.dev/packages/dio)
- [go_router Documentation](https://pub.dev/packages/go_router)

### 아키텍처
- [Clean Architecture by Uncle Bob](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Feature-First Organization](https://docs.flutter.dev/cookbook/architecture/organizing)

### API
- [PokéAPI Documentation](https://pokeapi.co/docs/v2)

## 📄 라이선스

이 프로젝트는 학습 및 포트폴리오 목적으로 제작되었습니다.

## 👨‍💻 작성자

**Flutter Developer**

- 📧 Email: your.email@example.com
- 💼 LinkedIn: [Your Profile](https://linkedin.com)
- 🐙 GitHub: [@yourusername](https://github.com/yourusername)

## 🙏 감사의 말

- [PokéAPI](https://pokeapi.co/) - 포켓몬 데이터 제공
- Flutter & Dart Team - 훌륭한 프레임워크
- Riverpod Team - 강력한 상태 관리 솔루션

---

⭐ **이 프로젝트가 도움이 되었다면 Star를 눌러주세요!**

**Made with ❤️ and Flutter**
