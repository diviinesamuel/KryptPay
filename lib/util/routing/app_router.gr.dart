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
    EnterAmountToSendScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EnterAmountToSendScreen(),
      );
    },
    EnterPasscodeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<EnterPasscodeScreenRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EnterPasscodeScreen(
          key: args.key,
          onPasscodeValidated: args.onPasscodeValidated,
        ),
      );
    },
    EnterRecipientAddressScreenRoute.name: (routeData) {
      final args = routeData.argsAs<EnterRecipientAddressScreenRouteArgs>(
          orElse: () => const EnterRecipientAddressScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EnterRecipientAddressScreen(key: args.key),
      );
    },
    LoginScreenRoute.name: (routeData) {
      final args = routeData.argsAs<LoginScreenRouteArgs>(
          orElse: () => const LoginScreenRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LoginScreen(key: args.key),
      );
    },
    OnBoardingScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnBoardingScreen(),
      );
    },
    ReceiveTokenScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReceiveTokenScreen(),
      );
    },
    SelectFiatCurrencyScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SelectFiatCurrencyScreen(),
      );
    },
    SendTokenScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SendTokenScreen(),
      );
    },
    SendTokenSummaryScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SendTokenSummaryScreen(),
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
    TokenSentSuccessfullyScreenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TokenSentSuccessfullyScreen(),
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
/// [EnterAmountToSendScreen]
class EnterAmountToSendScreenRoute extends PageRouteInfo<void> {
  const EnterAmountToSendScreenRoute({List<PageRouteInfo>? children})
      : super(
          EnterAmountToSendScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterAmountToSendScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EnterPasscodeScreen]
class EnterPasscodeScreenRoute
    extends PageRouteInfo<EnterPasscodeScreenRouteArgs> {
  EnterPasscodeScreenRoute({
    Key? key,
    required void Function() onPasscodeValidated,
    List<PageRouteInfo>? children,
  }) : super(
          EnterPasscodeScreenRoute.name,
          args: EnterPasscodeScreenRouteArgs(
            key: key,
            onPasscodeValidated: onPasscodeValidated,
          ),
          initialChildren: children,
        );

  static const String name = 'EnterPasscodeScreenRoute';

  static const PageInfo<EnterPasscodeScreenRouteArgs> page =
      PageInfo<EnterPasscodeScreenRouteArgs>(name);
}

class EnterPasscodeScreenRouteArgs {
  const EnterPasscodeScreenRouteArgs({
    this.key,
    required this.onPasscodeValidated,
  });

  final Key? key;

  final void Function() onPasscodeValidated;

  @override
  String toString() {
    return 'EnterPasscodeScreenRouteArgs{key: $key, onPasscodeValidated: $onPasscodeValidated}';
  }
}

/// generated route for
/// [EnterRecipientAddressScreen]
class EnterRecipientAddressScreenRoute
    extends PageRouteInfo<EnterRecipientAddressScreenRouteArgs> {
  EnterRecipientAddressScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EnterRecipientAddressScreenRoute.name,
          args: EnterRecipientAddressScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'EnterRecipientAddressScreenRoute';

  static const PageInfo<EnterRecipientAddressScreenRouteArgs> page =
      PageInfo<EnterRecipientAddressScreenRouteArgs>(name);
}

class EnterRecipientAddressScreenRouteArgs {
  const EnterRecipientAddressScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'EnterRecipientAddressScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginScreen]
class LoginScreenRoute extends PageRouteInfo<LoginScreenRouteArgs> {
  LoginScreenRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LoginScreenRoute.name,
          args: LoginScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';

  static const PageInfo<LoginScreenRouteArgs> page =
      PageInfo<LoginScreenRouteArgs>(name);
}

class LoginScreenRouteArgs {
  const LoginScreenRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'LoginScreenRouteArgs{key: $key}';
  }
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
/// [ReceiveTokenScreen]
class ReceiveTokenScreenRoute extends PageRouteInfo<void> {
  const ReceiveTokenScreenRoute({List<PageRouteInfo>? children})
      : super(
          ReceiveTokenScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReceiveTokenScreenRoute';

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
/// [SendTokenScreen]
class SendTokenScreenRoute extends PageRouteInfo<void> {
  const SendTokenScreenRoute({List<PageRouteInfo>? children})
      : super(
          SendTokenScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SendTokenScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SendTokenSummaryScreen]
class SendTokenSummaryScreenRoute extends PageRouteInfo<void> {
  const SendTokenSummaryScreenRoute({List<PageRouteInfo>? children})
      : super(
          SendTokenSummaryScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SendTokenSummaryScreenRoute';

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

/// generated route for
/// [TokenSentSuccessfullyScreen]
class TokenSentSuccessfullyScreenRoute extends PageRouteInfo<void> {
  const TokenSentSuccessfullyScreenRoute({List<PageRouteInfo>? children})
      : super(
          TokenSentSuccessfullyScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokenSentSuccessfullyScreenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
