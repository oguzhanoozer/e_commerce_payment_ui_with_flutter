class StringConstants {
  static StringConstants? _instance;
  static StringConstants get instance {
    _instance ??= StringConstants._init();
    return _instance!;
  }

  StringConstants._init();

  final String overviewText = "Overview";
  final String paymentText = "Payment";
  final String confirmationText = "Confirmation";
  final String checkoutText = "Checkout";
  final String selectYourPaymentMethodText = "Select your payment method";
  final String totalText = "TOTAL";
  final String continueText = "CONTINUE";
  final String showMore = "Show More";
  final String aliPayText = "Alipay";
  final String americanExpressPayText = "American Express";
  final String applePayText = "Apple Pay";
  final String bitcoinPayText = "Bitcoin Pay";
  final String dinersClubPayText = "Diners Club";
  final String ethereumPayText = "Ethereum";
  final String giroCardPayText = "Giro Card";
  final String giroPayText = "GiroPay";
  final String googlePayText = "Google Pay";
  final String idealPayText = "iDeal";
  final String klarnaPayText = "Klarna";
  final String payPayText = "PayPal";
  final String maestroPayText = "Maestro";
  final String maestroCardPayText = "Maestro Card";
  final String Przelewy24PayText = "Przelewy24Pay";
  final String VPayPayText = "V-PAYPay";
  final String VISAPayText = "VISA";
  final String XRPPay = "XRP Pay";
  final String priceText = "€ 10,00";
}
