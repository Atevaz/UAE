import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:h_m/presentation/router/app_animation.dart';
import 'package:h_m/presentation/screens/shared/splash_screen.dart';
import 'package:h_m/presentation/screens/user/all_products_screen.dart';
import 'package:h_m/presentation/screens/user/brands_screen.dart';
import 'package:h_m/presentation/screens/user/cart_screen.dart';
import 'package:h_m/presentation/screens/user/contact_us_screen.dart';
import 'package:h_m/presentation/screens/user/customer_service_screen.dart';
import 'package:h_m/presentation/screens/user/edit_profile.dart';
import 'package:h_m/presentation/screens/user/faq_screen.dart';
import 'package:h_m/presentation/screens/user/favorite_screen.dart';
import 'package:h_m/presentation/screens/user/home_layout.dart';
import 'package:h_m/presentation/screens/user/home_screen.dart';
import 'package:h_m/presentation/screens/user/location_screen.dart';
import 'package:h_m/presentation/screens/user/login_screen.dart';
import 'package:h_m/presentation/screens/user/more_screen.dart';
import 'package:h_m/presentation/screens/user/notifications.dart';
import 'package:h_m/presentation/screens/user/offers_screen.dart';
import 'package:h_m/presentation/screens/user/payment_method_screen.dart';
import 'package:h_m/presentation/screens/user/payment_screen.dart';

import 'package:h_m/presentation/screens/user/setting_screen.dart';

import 'package:h_m/presentation/screens/user/product_details_screen.dart';
import 'package:h_m/presentation/screens/user/search_screen.dart';
import 'package:h_m/presentation/screens/user/signup_screen.dart';
import 'package:h_m/presentation/screens/user/verification_screen.dart';

import '../../component.dart';
import '../screens/user/ballance_details_screen.dart';
import '../widget/switch_tab_bar.dart';
import 'app_router_names.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouterNames.rSplashRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: SplashScreen(),
        );
      case AppRouterNames.rLocationRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: LocationScreen(),
        );
      case AppRouterNames.rLoginRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: LogInScreen(),
        );
      case AppRouterNames.rRegisterRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: SignUpScreen(),
        );
      case AppRouterNames.rVerificationRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: VerificationScreen(),
        );
      case AppRouterNames.rHomeRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: HomeLayout(),
        );
      case AppRouterNames.rAllProductRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: AllProductsScreen(),
        );
      case AppRouterNames.rAllBrandsRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: BrandsScreen(),
        );
      case AppRouterNames.rFavoriteRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: FavoriteScreen(),
        );
      case AppRouterNames.rCartRoute:
        return MaterialPageRoute(
          builder: (_) => StackOver(),
        );
      case AppRouterNames.rOfferRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: OffersScreen(),
        );
      case AppRouterNames.rMoreRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: MoreScreen(),
        );
      case AppRouterNames.rNotificationRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: NotificationsScreen(),
        );
      case AppRouterNames.rProductDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(),
        );
      case AppRouterNames.rPaymentRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: PaymentScreen(),
        );
      case AppRouterNames.rEditProfileRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: EditProfile(),
        );
      case AppRouterNames.rPaymentMethodRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: PaymentMethodScreen(),
        );
      case AppRouterNames.rBalanceDetailsRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: BalanceDetailsScreen(),
        );
      case AppRouterNames.rCreditRoute:
        // todo credit screen
        return CustomPageRouteTransiton.fadeOut(
          page: SplashScreen(),
        );
      case AppRouterNames.rSettingsRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: SettingScreen(),
        );
      case AppRouterNames.rCustomerServicesRoute:
        return CustomPageRouteTransiton.fadeOut(
          page: CustomerService(),
        );
      case AppRouterNames.rContactUsRoute:
        // todo contact us screen or chat screen
        return CustomPageRouteTransiton.fadeOut(
          page: ContactUsScreen(),
        );
      case AppRouterNames.rTermsAndConditionsRoute:
        // todo Terms and conditions
        return CustomPageRouteTransiton.fadeOut(
          page: EditProfile(),
        );
      case AppRouterNames.rFAQRoute:
        return CustomPageRouteTransiton.fadeOut(page: FAQScreen());
    }
  }
}
