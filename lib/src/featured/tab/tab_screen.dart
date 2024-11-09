// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';


// final tabIndexProvider = StateProvider<int>((ref) => 0);

// class TabScreen extends ConsumerWidget {
//   const TabScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final tabIndex = ref.watch(tabIndexProvider);

//     // final List screen = [
//     //   const HomeScreen(),
//     //   const CategoryScreen(),
//     //   const CartScreen(),
//     //   const NotificationScreen(),
//     //   const AccountScreen(),
//     // ];

//     Badge floatingActionButton = Badge(
//       backgroundColor: AppColors.primaryColor,
//       child: FloatingActionButton(
//         onPressed: () => context.pushNamed(Routes.cartScreenRoute),
//         child: Icon(Iconsax.shopping_cart4, color: Colors.white, size: context.isPhone ? 22 : 26,),
//       ),
//     );

//     return Scaffold(
//       body: screen[tabIndex],
//       bottomNavigationBar: const BottomAppBarWidget(),
//       floatingActionButton: floatingActionButton,
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       extendBody: true,
//       resizeToAvoidBottomInset: false,
//     );
//   }
// }

// class BottomAppBarWidget extends StatelessWidget {
//   const BottomAppBarWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       clipBehavior: Clip.antiAlias,
//       notchMargin: 8,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: context.isPhone ? MainAxisAlignment.spaceBetween : MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             ZoomTab(
//               title: 'Home',
//               icon: Icon(Iconsax.home_1, color: context.isDarkMode ? AppColors.brandGray500 : AppColors.brandGray300, size: context.isPhone ? 22 : 26,),
//               activeIcon: Icon(Iconsax.home5, color: context.theme.shadowColor, size: context.isPhone ? 22 : 26,),
//               index: 0,
//             ),
//             ZoomTab(
//               title: 'Category',
//               icon: Icon(IconlyLight.category, color: context.isDarkMode ? AppColors.brandGray500 : AppColors.brandGray300, size: context.isPhone ? 22 : 26,),
//               activeIcon: Icon(IconlyBold.category, color: context.theme.shadowColor, size: context.isPhone ? 22 : 26,),
//               index: 1
//             ),
//             const SizedBox(),
//             ZoomTab(
//               title: 'Notification',
//               icon: Icon(IconlyLight.notification, color: AppColors.brandGray300, size: context.isPhone ? 22 : 26,),
//               activeIcon: Icon(IconlyBold.notification, color: context.theme.shadowColor, size: context.isPhone ? 22 : 26,),
//               index: 3
//             ),
//             ZoomTab(
//               title: 'Settings',
//               icon: Icon(IconlyLight.setting, color: AppColors.brandGray300, size: context.isPhone ? 22 : 26,),
//               activeIcon: Icon(IconlyBold.setting, color: context.theme.shadowColor, size: context.isPhone ? 22 : 26,),
//               index: 4
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ZoomTab extends ConsumerWidget {
//   const ZoomTab({
//     super.key, required this.icon, required this.activeIcon, required this.index, required this.title,
//   });

//   final Icon icon;
//   final Icon activeIcon;
//   final int index;
//   final String title;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final tabIndex = ref.watch(tabIndexProvider);
//     void onTab(int index) => ref.read(tabIndexProvider.notifier).state = index;

//     return ZoomTapAnimation (
//       child: GestureDetector(
//         onTap: () => onTab(index),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             tabIndex == index ? activeIcon : icon,

//             Insets.gapH5,

//             Text(title, style: context.theme.textTheme.bodySmall!.copyWith(
//               color: tabIndex == index ? context.theme.shadowColor :  AppColors.brandGray300,),
//               overflow: TextOverflow.ellipsis,)
//           ],
//         ),
//       )
//     );
//   }
// }
