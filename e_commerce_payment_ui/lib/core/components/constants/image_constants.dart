class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();

  static String icon_toggle_selected = "ic_toggle_selected";
  static String icon_toggle_unselected = "ic_toggle_unselected";
  static String icon_AliPay = "ic_AliPay";
  static String icon_AmericanExpressPay = "ic_AmericanExpressPay";
  static String icon_ApplePay = "ic_ApplePay";
  static String icon_BitcoinPay = "ic_BitcoinPay";
  static String icon_EthereumPay = "ic_EthereumPay";
  static String icon_XRPPay = "ic_XRPPay";
  static String icon_Check = "ic_Check";
  static String icon_DinersClubPay = "ic_DinersClubPay";
  static String icon_GiroCardPay = "ic_GiroCardPay";
  static String icon_GiroPay = "ic_GiroPay";
  static String icon_GooglePay = "ic_GooglePay";
  static String icon_iDealPay = "ic_iDealPay";
  static String icon_KlarnaPay = "ic_KlarnaPay";
  static String icon_MaestroPay = "ic_MaestroPay";
  static String icon_MasterCardPay = "ic_MasterCardPay";
  static String icon_PayPal = "ic_PayPal";
  static String icon_Przelewy24Pay = "ic_Przelewy24Pay";
  static String icon_V_PAYPay = "ic_V-PAYPay";
  static String icon_VisaPay = "ic_VisaPay";

  static String image_alipay_large = "alipay_large";
  static String image_americanexpress_large = "americanexpress_large";
  static String image_applePay_large = "applePay_large";
  static String image_Bitcoin_large = "Bitcoin_large";
  static String image_Dinersclub_large = "Dinersclub_large";
  static String image_ethereum_large = "ethereum_large";
  static String image_girocard_large = "girocard_large";
  static String image_giropay_large = "giropay_large";
  static String image_Gpay_large = "Gpay_large";
  static String image_ideal_large = "ideal_large";
  static String image_klarna_large = "klarna_large";
  static String image_Maestro_large = "Maestro_large";
  static String image_Paypal_large = "Paypal_large";
  static String image_prwzeley_large = "prwzeley_large";
  static String image_V_PAY_large = "V-PAY_large";
  static String image_Visa_large = "Visa_large";
  static String image_XRP_large = "XRP_large";
}

String darkThemePath = "dark_theme_icons";
String lightThemePath = "light_theme_icons";

extension IconConstantExtension on String {
  String get iconPath => "assets/icons/$lightThemePath/$this.png";
}

extension ImageConstantExtension on String {
  String get imagePath => "assets/images/$this.png";
}
