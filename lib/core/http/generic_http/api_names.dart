// ignore_for_file: constant_identifier_names

class ApiNames{

  static const String baseUrl = "https://staging.suliit.com/api/v3/";
  // static const String baseUrl = "https://suliit.com/api/v3/";

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

  // profile urls
  static const String updateProfile = "profile/update?_method=put";

  //products urls
  static const String getHome = "home";
  static const String getPopularProducts = "mostpopulars";
  static String toggleWishlist (int id) => "products/$id/wishlist/toggle";

  // categories urls
  static const String getCategories = "categories";
  static const String getBrands = "brands";
  static const String brandDetails = "brands/";
  static const String getCategoryProducts = "search";

  // blogs
  static const String blogs = "blogs";

  // addresses
  static const String userAddresses = "user/addresses";
  static const String addUserAddress = "user/addresses/create";
  static const String countries = "countries";
  static const String states = "states";
  static const String cities  = "cities";
  static String setDefaultAddress (int id) => "user/addresses/$id/set-default?_method=put";
  static String deleteAddress (int id) => "user/addresses/$id/delete";
  static String editAddress (int id) => "user/addresses/$id/update?_method=put";
  // sale urls
  static const String getAllFlashSale = "flash-deals";
  static const String getSaleDetails = "flash-deal-products/";
  // general
  static const String terms = "terms";
  static const String privacyPolicy = "privacy-policy";
  static const String contactUs = "contact-us";
  static const String supportPolicy = "support-policy";
  static const String returnPolicy = "return-policy";
  // items routes
  static const String ITEMS = "Items";
  static const String FEATURED_ITEMS = "$ITEMS + /Featured";
  static const String REFRESH_TOKEN = "RefreshToken";
  // wishlist
  static const String wishlist = "wishlists";

}
