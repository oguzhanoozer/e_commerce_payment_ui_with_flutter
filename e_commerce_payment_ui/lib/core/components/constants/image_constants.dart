class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();

  static String icon_Group_2645 = "Group_2645";
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
}

String themePath = "dark_theme_icons";

extension ImageConstantExtension on String {
  String get iconPath => "assets/icons/dark_theme_icons/$this.png";
}
