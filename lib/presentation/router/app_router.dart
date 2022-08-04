import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:h_m/presentation/screens/shared/splash_screen.dart';
import 'package:h_m/presentation/screens/user/all_products_screen.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/screens/user/edit_profile.dart';
import 'package:h_m/presentation/screens/user/favorite_screen.dart';
import 'package:h_m/presentation/screens/user/home_screen.dart';
import 'package:h_m/presentation/screens/user/location_screen.dart';
import 'package:h_m/presentation/screens/user/login_screen.dart';
import 'package:h_m/presentation/screens/user/more_screen.dart';
import 'package:h_m/presentation/screens/user/notifications.dart';
import 'package:h_m/presentation/screens/user/offers_screen.dart';
import 'package:h_m/presentation/screens/user/payment_screen.dart';
import 'package:h_m/presentation/screens/user/signup_screen.dart';

import '../../component.dart';
import 'app_router_names.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.rSplashRoute:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rLocationRoute:
        return MaterialPageRoute(
          builder: (_) => LocationScreen(),
        );
      case AppRouterNames.rLoginRoute:
        return MaterialPageRoute(
          builder: (_) => LogInScreen(),
        );
      case AppRouterNames.rRegisterRoute:
        return MaterialPageRoute(
          builder: (_) => SignUpScreen(),
        );
      case AppRouterNames.rVerificationRoute:
        return MaterialPageRoute(
          // todo verifications screen
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rHomeRoute:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case AppRouterNames.rAllProductRoute:
        return MaterialPageRoute(
          builder: (_) => AllProductsScreen(),
        );
      case AppRouterNames.rAllBrandsRoute:
        return MaterialPageRoute(
          // todo all brands screen
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rFavoriteRoute:
        return MaterialPageRoute(
          builder: (_) => FavoriteScreen(),
        );
      case AppRouterNames.rCartRoute:
        return MaterialPageRoute(
          builder: (_) => CartScreen(showAppBar: true, showSideImage: true),
        );
      case AppRouterNames.rOfferRoute:
        return MaterialPageRoute(
          builder: (_) => OffersScreen(),
        );
      case AppRouterNames.rMoreRoute:
        return MaterialPageRoute(
          builder: (_) => MoreScreen(),
        );
      case AppRouterNames.rNotificationRoute:
        return MaterialPageRoute(
          builder: (_) => NotificationsScreen(),
        );
      case AppRouterNames.rProductDetailsRoute:
        return MaterialPageRoute(
          // todo product details screen
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rPaymentRoute:
        return MaterialPageRoute(
          builder: (_) => PaymentScreen(),
        );
      case AppRouterNames.rEditProfileRoute:
        return MaterialPageRoute(
          builder: (_) => EditProfile(),
        );
      case AppRouterNames.rPaymentMethodRoute:
        return MaterialPageRoute(
          // todo payment method or wallet screen
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rBalanceDetailsRoute:
        return MaterialPageRoute(
          // todo ballence details screen
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rCreditRoute:
        // todo credit screen
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rSettingsRoute:
        return MaterialPageRoute(
          // todo settings screen
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rCustomerServicesRoute:
        return MaterialPageRoute(
          // todo customer services screen
          builder: (_) => SplashScreen(),
        );
      case AppRouterNames.rContactUsRoute:
        return MaterialPageRoute(
          // todo contact us screen or chat screen
          builder: (_) => EditProfile(),
        );
      case AppRouterNames.rTermsAndConditionsRoute:
        return MaterialPageRoute(
          // todo Terms and conditions
        builder: (_) => EditProfile(),
        );
      case AppRouterNames.rFAQRoute:
        return MaterialPageRoute(
          // todo FAQ
        builder: (_) => EditProfile(),
        );
    }
  }
}
