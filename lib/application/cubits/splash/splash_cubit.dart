import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/global_config.dart';
import '../../../domain/models/splash/splash_item.dart';
import '../../../presentation/splash/components/single_splash_page.dart';
import '../../routes/app_route_config.dart';

part 'splash_state.dart';

part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final PageController pageController;
  final BuildContext context;

  SplashCubit({
    required this.pageController,
    required this.context,
  }) : super(SplashState.initial());

  // set current page
  set currentPage(int value) {
    emit(state.copyWith(currentSplashIndex: value));
  }

// next slide
  void next() {
    pageController.animateToPage(
      state.currentSplashIndex + 1,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeIn,
    );
  }

// launch app
  void launch() {
    GlobalConfig.storageService.setBoolValue(
      AppStrings.IS_APP_PREVIOUSLY_RAN,
      true,
    );
    context.pushReplacementNamed(AppRoutes.home);
  }

// skip slides
  void skip() {
    pageController.animateToPage(
      state.pages.length - 1,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
  }
}
