import 'package:flutter/material.dart';

@immutable
class Routes {
  const Routes._();
  static const String initialRoute = appStartupScreenRoute;
  static const String fallbackRoute = notFoundScreenRoute;

  static const String appStartupScreenRoute = 'app-startup-screen';
  static const String tabScreen = 'tab_screen';
  static const String introScreenRoute = 'intro-screen';
  static const String notificationIntroScreenRoute = 'notification-intro-screen';
  static const String languageIntroScreenRoute = 'language-intro-screen';
  static const String homeScreenRoute = 'home-screen';
  static const String productScreenRoute = 'product-screen';
  static const String checkoutScreenRoute = 'checkout-screen';
  static const String orderSuccessScreenRoute = 'order-success-screen';
  static const String cartScreenRoute = 'cart-screen';
  static const String notFoundScreenRoute = 'route-not-found-screen';
  static const String loginScreenRoute = 'login-screen';
  static const String registerScreenRoute = 'register-screen';
  static const String forgotPasswordScreenRoute = 'forgot-password-screen';
  static const String changePasswordScreenRoute = 'change-password-screen';
  static const String profileScreenRoute = 'profile-screen';
  static const String notificationScreenRoute = 'notification-screen';
  static const String reviewScreenRoute = 'review-screen';
  static const String addReviewScreenRoute = 'addReview-screen';
  static const String whishListScreenRoute = 'wish-list-screen';
  static const String deliveryScreenRoute = 'delivery-screen';
  static const String paymentScreenRoute = 'payment-screen';
  static const String offerScreenRoute = 'offer-screen';
  static const String categoryDetailsScreenRoute = 'category-details-screen';
  static const String brandScreenRoute = 'brand-screen';

  static const String notificationSettingScreenRoute = 'notification-setting-screen';
  static const String notificationOffSettingScreenRoute = 'notification-off-setting-screen';
  static const String preferenceSettingScreenRoute = 'preferences-setting-screen';
  static const String addressSettingScreenRoute = 'address-setting-screen';
  static const String addressEmptyScreenRoute = 'address-empty-screen';
  static const String addAddressSettingScreenRoute = 'addAddress-setting-screen';
  static const String languageSettingScreenRoute = 'language-setting-screen';
  static const String helpSettingScreenRoute = 'help-setting-screen';
  static const String chatSettingScreenRoute = 'chat-setting-screen';
  static const String paymentSettingScreenRoute = 'payment-setting-screen';
  static const String addPaymentSettingScreenRoute = 'add-payment-setting-screen';
  static const String accountSearchSettingScreenRoute = 'account-search-setting-screen';
  static const String walletSettingScreenRoute = 'wallet-setting-screen';
  static const String locationOffSettingScreenRoute = 'location-off-setting-screen';
  static const String locationSettingScreenRoute = 'location-setting-screen';
  static const String locationSearchSettingScreenRoute = 'location-search-setting-screen';
  static const String profileSettingScreenRoute = 'profile-setting-screen';
  static const String editProfileSettingScreenRoute = 'edit-profile-setting-screen';
  static const String changePasswordSettingScreenRoute = 'change-password-setting-screen';
  static const String appearanceSettingScreenRoute = 'appearance-setting-screen';
  static const String faqSettingScreenRoute = 'faq-setting-screen';
  static const String myOrderSettingScreenRoute = 'my-order-setting-screen';
  static const String myOrderDetailsSettingScreenRoute = 'my-order-details-setting-screen';
  static const String myOrderCancelSettingScreenRoute = 'my-cancel-order-setting-screen';
  static const String myOrderCancelConfirmSettingScreenRoute = 'my-cancel-order-confirm-setting-screen';
  static const String myOrderCancelSuccessScreenRoute = 'my-cancel-order-success-screen';
  static const String trackOrderSettingScreenRoute = 'track-my-order-setting-screen';
  static const String returnSettingScreenRoute = 'return-setting-screen';
}
