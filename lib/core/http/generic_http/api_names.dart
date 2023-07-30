class ApiNames {
  static const String baseUrl = "https://suliit.com/api/v3/";

  // auth routes
  static const String login = "login";
  static const String forgetPassword = "password/forgot";
  static const String resendPasswordCode = "password/forgot-resend-code";
  static const String resetPassword = "password/reset";

  //items routes
  static const String ITEMS = "Items";
  static const String FEATURED_ITEMS = ITEMS + "/Featured";

  static const String REFRESH_TOKEN = "RefreshToken";
}
