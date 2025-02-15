import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vednroo_ui/view/profile_page.dart';
import 'package:vednroo_ui/view/screen_home.dart';

import '../widget/colors.dart';
import 'screen_offers.dart';

class ScreenParentNavigation extends StatelessWidget {
  ScreenParentNavigation({super.key});

  final pageNotifier = ValueNotifier(4);

  final List<Widget> _screens = [
    HomePage(),
    const OffersPage(),
    const HomePage(),
    const HomePage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: pageNotifier,
          builder: (context, value, _) => _screens[pageNotifier.value]),
      bottomNavigationBar: NavigationBar(pageNotifier: pageNotifier),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({super.key, required this.pageNotifier});
  final ValueNotifier<int> pageNotifier;
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageNotifier,
        builder: (context, value, _) {
          return Material(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: AppColor.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                        0.20), // Increased opacity for darker shadow
                    blurRadius: 6, // Increased for a stronger blur effect
                    spreadRadius: 5, // Increased for a wider shadow effect
                    offset: const Offset(0, -5), // Moves shadow more upwards
                  ),
                ],
              ),
              padding: const EdgeInsets.only(top: 4),
              height: 60,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  bottomNavigationItems(
                    icon: CupertinoIcons.home,
                    label: 'Home',
                    onTap: () => pageNotifier.value = 0,
                    isSelected: pageNotifier.value == 0,
                  ),
                  bottomNavigationItems(
                    icon: Icons.discount_outlined,
                    label: 'Offers',
                    onTap: () => pageNotifier.value = 1,
                    isSelected: pageNotifier.value == 1,
                  ),
                  bottomNavigationItems(
                    icon: Icons.handshake_outlined,
                    label: 'Buy & Sell',
                    onTap: () => pageNotifier.value = 2,
                    isSelected: pageNotifier.value == 2,
                  ),
                  bottomNavigationItems(
                    icon: Icons.drive_eta_outlined,
                    label: 'Ride',
                    onTap: () => pageNotifier.value = 3,
                    isSelected: pageNotifier.value == 3,
                  ),
                  bottomNavigationItems(
                    icon: CupertinoIcons.person,
                    label: 'Profile',
                    onTap: () => pageNotifier.value = 4,
                    isSelected: pageNotifier.value == 4,
                  ),
                ],
              ),
            ),
          );
        });
  }

  Expanded bottomNavigationItems({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
    bool addTextcolor = false,
    bool hideIcon = false,
    bool isSelected = false,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          child: Column(
            children: [
              const SizedBox(height: 5),
              hideIcon
                  ? const SizedBox(height: 25)
                  : Icon(
                      icon,
                      color: isSelected ? Colors.black : Colors.grey.shade500,
                    ),
              const SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(
                  color: addTextcolor == false
                      ? isSelected
                          ? Colors.black
                          : Colors.grey.shade500
                      : Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
