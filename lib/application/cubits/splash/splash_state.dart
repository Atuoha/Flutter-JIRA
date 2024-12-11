part of 'splash_cubit.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    required int currentSplashIndex,
    required List<Widget> pages,
  }) = _SplashState;

  factory SplashState.initial() => SplashState(
        pages: splashItems
            .map((splashItem) => singleSplashPage(splashItem: splashItem))
            .toList(),
        currentSplashIndex: 0,
      );
}
