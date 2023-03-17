import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'addresses/addresses_screen.dart';
import 'change_password/change_password_screen.dart';
import 'orders/orders_screen.dart';
import 'payment_method/payment_method_screen.dart';
import 'widget/edit_profile_button.dart';
import 'widget/general_text.dart';
import 'widget/nav_tile.dart';
import 'widget/profile_name_text.dart';
import 'widget/profile_photo.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const ProfilePhoto(imageUrl: ''),
            const SizedBox(height: 16),
            const ProfileNameText(name: 'Manuel Ahuno'),
            const SizedBox(height: 5),
            EditProfileButton(onPressed: () {}),
            const SizedBox(height: 30),
            const GeneralText(),
            const SizedBox(height: 16),
            NavTile(
              onTap: () {
                router.Router.pushNamed(ChangePasswordScreen.routeName);
              },
              icon: 'assets/images/lock.png',
              title: 'Security',
              subTitle: 'Your password account',
            ),
            const SizedBox(height: 16),
            NavTile(
              onTap: () {
                router.Router.pushNamed(OrdersScreen.routeName);
              },
              icon: 'assets/images/paper.png',
              title: 'My Orders',
              subTitle: 'Check all your orders',
            ),
            const SizedBox(height: 16),
            NavTile(
              onTap: () {
                router.Router.pushNamed(AddressesScreen.routeName);
              },
              icon: 'assets/images/location.png',
              title: 'My Address',
              subTitle: 'Update or add an address',
            ),
            const SizedBox(height: 16),
            NavTile(
              onTap: () {
                router.Router.pushNamed(PaymentMethodScreen.routeName);
              },
              icon: 'assets/images/wallet.png',
              title: 'Payment Method',
              subTitle: 'Add a payment method',
            ),
            const SizedBox(height: 16),
            NavTile(
              onTap: () {},
              icon: 'assets/images/logout.png',
              title: 'Logout',
              subTitle: 'Sign out of your account',
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
