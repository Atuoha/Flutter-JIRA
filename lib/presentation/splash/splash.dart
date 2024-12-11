import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../application/cubits/splash/splash_cubit.dart';
import '../../core/constants/app_colors.dart';
import '../core/components/platform_icons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController pageController = PageController();
  late SplashCubit splashCubit;

  @override
  void initState() {
    super.initState();
    splashCubit = SplashCubit(
      pageController: pageController,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: splashCubit,
      child: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.splashBgColor,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              elevation: 0,
              actions: [
                state.currentSplashIndex != state.pages.length - 1
                    ? TextButton(
                  onPressed: () => context.read<SplashCubit>().skip(),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                )
                    : const SizedBox.shrink()
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.paddingOf(context).top,
                  left: 18,
                  right: 18,
                ),
                child: Column(
                  crossAxisAlignment:kIsWeb? CrossAxisAlignment.center: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: PageView(
                        onPageChanged: (value) {
                          setState(() {
                            context.read<SplashCubit>().currentPage = value;
                          });
                        },
                        controller: pageController,
                        children: state.pages,
                      ),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: state.pages.length,
                        effect: CustomizableEffect(
                          activeDotDecoration: DotDecoration(
                            width: 25,
                            height: 4,
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          dotDecoration: DotDecoration(
                            width: 7,
                            height: 4,
                            color: AppColors.dotIndicatorColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () =>
                      state.currentSplashIndex != state.pages.length - 1
                          ? context.read<SplashCubit>().next()
                          : context.read<SplashCubit>().launch(),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 9,
                        children: [
                          Text(
                            state.currentSplashIndex != state.pages.length - 1
                                ? 'Next'
                                : 'Get Started',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const PlatformIcon(
                            iosIcon: CupertinoIcons.arrow_right,
                            androidIcon: Icons.arrow_right_alt,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
