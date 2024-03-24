// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DashboardScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    OnBoardingScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingScreen(),
      );
    },
    SelectFiatCurrencyScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SelectFiatCurrencyScreen(),
      );
    },
    SetUpPassCodeAuthorizationScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SetUpPassCodeAuthorizationScreenRouteArgs>(
          orElse: () => const SetUpPassCodeAuthorizationScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SetUpPassCodeAuthorizationScreen(key: args.key),
      );
    },
    SignUpScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpScreenRouteArgs>(
          orElse: () => const SignUpScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignUpScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [DashboardScreen]
class DashboardScreenRoute extends PageRouteInfo<void> {
  const DashboardScreenRoute({List<PageRouteInfo>? children})
      : super(
          DashboardScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<void> {
  const LoginScreenRoute({List<PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnBoardingScreen]
class OnBoardingScreenRoute extends PageRouteInfo<void> {
  const OnBoardingScreenRoute({List<PageRouteInfo>? children})
      : super(
          OnBoardingScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SelectFiatCurrencyScreen]
class SelectFiatCurrencyScreenRoute extends PageRouteInfo<void> {
  const SelectFiatCurrencyScreenRoute({List<PageRouteInfo>? children})
      : super(
          SelectFiatCurrencyScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SelectFiatCurrencyScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SetUpPassCodeAuthorizationScreen]
class SetUpPassCodeAuthorizationScreenRoute
    extends PageRouteInfo<SetUpPassCodeAuthorizationScreenRouteArgs> {
  SetUpPassCodeAuthorizationScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SetUpPassCodeAuthorizationScreenRoute.name,
          args: SetUpPassCodeAuthorizationScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SetUpPassCodeAuthorizationScreenRoute';

  static const PageInfo<SetUpPassCodeAuthorizationScreenRouteArgs> page =
      PageInfo<SetUpPassCodeAuthorizationScreenRouteArgs>(name);
}

class SetUpPassCodeAuthorizationScreenRouteArgs {
  const SetUpPassCodeAuthorizationScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SetUpPassCodeAuthorizationScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SignUpScreen]
class SignUpScreenRoute extends PageRouteInfo<SignUpScreenRouteArgs> {
  SignUpScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpScreenRoute.name,
          args: SignUpScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpScreenRoute';

  static const PageInfo<SignUpScreenRouteArgs> page =
      PageInfo<SignUpScreenRouteArgs>(name);
}

class SignUpScreenRouteArgs {
  const SignUpScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SignUpScreenRouteArgs{key: $key}';
  }
}
