// ignore_for_file: constant_identifier_names

class ApiNames{
  static const String baseUrl = "https://staging.suliit.com/api/v3/";
  // auth routes
  static const String login = "login";
  static const String savePublicKey = "users/";
  static const String updateUser = "users/";
  static const String register = "register";
  static const String activeAccount = "otp/verify";
  static const String resendCode = "ResendCode";
  static const String switchNotify = "SwitchNotify";
  static const String forgetPassword = "cabaf46ee69d7b8445a5d791";
  static const String resetPassword = "A2q4mG84Z9rE2B38In4HALSWTwt9eQ5Slzq56Cod";
  static const String resendPasswordCode = "password/forgot-resend-code";
  static const String logout = "logout";
  //products urls
  static const String getHome = "home";
  static const String getPopularProducts = "mostpopulars";

  // categories urls

  static const String getCategories = "categories";
  static const String getBrands = "brands";
  static const String brandDetails = "brands/";

  // sale urls
  static const String getAllFlashSale = "flash-deals";
  static const String getSaleDetails = "flash-deal-products/";

  // items routes
  static const String ITEMS = "Items";
  static const String FEATURED_ITEMS = "$ITEMS + /Featured";
  static const String REFRESH_TOKEN = "RefreshToken";
}
