import 'package:flutter/material.dart';

import 'models/address.dart';
import 'models/food.dart';
import 'models/order.dart';
import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/login/login_screen.dart';
import 'screen/auth/otp/otp_screen.dart';
import 'screen/auth/reset_password/reset_password_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
import 'screen/auth/welcome/welcome_screen.dart';
import 'screen/main/app.dart';
import 'screen/main/cancel_order/cancel_order_screen.dart';
import 'screen/main/cart/cart_screen.dart';
import 'screen/main/category/category_screen.dart';
import 'screen/main/checkout/checkout_screen.dart';
import 'screen/main/favorite/favorite_screen.dart';
import 'screen/main/food_detail/food_detail_screen.dart';
import 'screen/main/home/home_screen.dart';
import 'screen/main/order_detail/order_detail_screen.dart';
import 'screen/main/order_status/order_status_screen.dart';
import 'screen/main/profile/addresses/addresses_screen.dart';
import 'screen/main/profile/change_password/change_password_screen.dart';
import 'screen/main/profile/edit_profile/edit_profile_screen.dart';
import 'screen/main/profile/orders/orders_screen.dart';
import 'screen/main/profile/payment_method/payment_method_screen.dart';
import 'screen/main/profile/profile_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WelcomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case SignUpScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpScreen());
    case OtpScreen.routeName:
      String email = settings.arguments as String;
      return MaterialPageRoute(builder: (_) => OtpScreen(email: email));
    case ForgotPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
    case ResetPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
    case MainApp.routeName:
      return MaterialPageRoute(builder: (_) => const MainApp());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case FavoriteScreen.routeName:
      return MaterialPageRoute(builder: (_) => const FavoriteScreen());
    case CartScreen.routeName:
      return MaterialPageRoute(builder: (_) => const CartScreen());
    case ProfileScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ProfileScreen());
    case ChangePasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
    case OrdersScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OrdersScreen());
    case AddressesScreen.routeName:
      return MaterialPageRoute(builder: (_) => const AddressesScreen());
    case PaymentMethodScreen.routeName:
      return MaterialPageRoute(builder: (_) => const PaymentMethodScreen());
    case EditProfileScreen.routeName:
      return MaterialPageRoute(builder: (_) => const EditProfileScreen());
    case CategoryScreen.routeName:
      return MaterialPageRoute(builder: (_) => const CategoryScreen());
    case CheckoutScreen.routeName:
      List<Food> argument = settings.arguments as List<Food>;
      return MaterialPageRoute(builder: (_) => CheckoutScreen(argument: argument));
    case OrderDetailScreen.routeName:
      Order argument = settings.arguments as Order;
      return MaterialPageRoute(builder: (_) => OrderDetailScreen(argument: argument));
    case CancelOrderScreen.routeName:
      return MaterialPageRoute(builder: (_) => const CancelOrderScreen());
    case OrderStatusScreen.routeName:
      Address argument = settings.arguments as Address;
      return MaterialPageRoute(builder: (_) => OrderStatusScreen(argument: argument));
    case FoodDetailScreen.routeName:
      Food argument = settings.arguments as Food;
      return MaterialPageRoute(builder: (_) => FoodDetailScreen(argument: argument));
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      );
  }
}
