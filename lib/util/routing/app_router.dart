

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:krypt/features/auth/dashboard/dashboard_screen.dart';
import 'package:krypt/features/auth/login/login_screen.dart';
import 'package:krypt/features/auth/sign-up/select_fiat_currency_screen.dart';
import 'package:krypt/features/auth/sign-up/set_up_passcode_authorization_screen.dart';
import 'package:krypt/features/auth/sign-up/sign_up_screen.dart';
import 'package:krypt/features/onboarding/onboarding_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  static const String _onboardingScreen = "/onboarding-screen";
  static const String _loginScreen = "/login-screen";
  static const String _signUpScreen = "/sign-up-screen";
  static const String _setUpPassCodeScreen = "/set-up-passcode-screen";
  static const String _selectFiatCurrency = "/select_fiat_currency_screen";
  static const String _dashboardScreenRoute = "/dashboard_screen";

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnBoardingScreenRoute.page, initial: true, path: _onboardingScreen),
        AutoRoute(page: LoginScreenRoute.page, path: _loginScreen),
        AutoRoute(page: SignUpScreenRoute.page, path: _signUpScreen),
        AutoRoute(page: SetUpPassCodeAuthorizationScreenRoute.page, path: _setUpPassCodeScreen),
        AutoRoute(page: SelectFiatCurrencyScreenRoute.page, path: _selectFiatCurrency),
        AutoRoute(page: DashboardScreenRoute.page, path: _dashboardScreenRoute),
        // AutoRoute(page: SelectUserInterestRoute.page, path: selectUserInterest),
        // AutoRoute(page: VendorCreateAccountBusinessDetailsRoute.page, path: vendorBusinessDetails),
        // AutoRoute(page: UploadBusinessPictureRoute.page, path: uploadBusinessPicturesScreen),
        // AutoRoute(page: UserDashboardRoute.page, path: userDashboardScreen),
        // AutoRoute(page: EditUserPersonalInformationRoute.page, path: editUserPersonalInformationScreen),
        // AutoRoute(page: ViewVendorBusinessInfoRoute.page, path: viewVendorBusinessInfoScreen),
        // AutoRoute(page: EditVendorBusinessInfoRoute.page, path: editVendorBusinessInfoScreen),
        // AutoRoute(page: ContactUsRoute.page, path: contactUsScreen),
        // AutoRoute(page: ChangePasswordRoute.page, path: changePasswordScreen),
        // AutoRoute(page: VendorDashboardRoute.page, path: vendorDashboardScreen),
        // AutoRoute(page: ResetPasswordRoute.page, path: resetPasswordScreen),
        // AutoRoute(page: SavedBookmarksRoute.page, path: savedBookmarksScreen),
        // AutoRoute(page: SearchRoute.page, path: searchScreen),
        // AutoRoute(page: AllCategoryScreenRoute.page, path: allCategoriesScreen),
        // AutoRoute(page: CategorySearchResultScreenRoute.page, path: categorySearchResultScreen),
        // AutoRoute(page: VendorDetailScreenRoute.page, path: vendorDetailScreen),
        // AutoRoute(page: AddReviewScreenRoute.page, path: addReviewScreen),
        // AutoRoute(page: AccountCreatedSuccessfullyScreenRoute.page, path: accountCreatedSuccessfullyScreen),
        // AutoRoute(page: ViewUserPersonalInformationRoute.page, path: viewUserPersonalInformationScreen),
        // AutoRoute(page: PrivacyPolicyScreenRoute.page, path: privacyPolicyScreen),
        // AutoRoute(page: TermsOfUseUseScreenRoute.page, path: termsOfUseScreen),
        // AutoRoute(page: VendorProfileIncompleteScreenRoute.page, path: vendorProfileIncompleteScreen),
        // AutoRoute(page: AccountSuspendedScreenRoute.page, path: accountSuspendedScreen),
        // AutoRoute(page: AppUpdateScreenRoute.page, path: appUpdateScreen),
      ];
}
