import 'package:intl/intl.dart';

class ConstantUtils {
  static const String currencySymbol = '\u{20B9}';
  static const String percentageSymbol = '%';

  static const String searchIconPath = 'assets/searchIcon.png';
  static const String filterIconPath = 'assets/filterIcon.png';
  static const String searchHere = 'Search here...';
  static const String shoeRackIconPath = 'assets/shoeRack.png';
  static const List<String> brandName = ['All', 'Nike', 'Adidas', 'Puma'];
  static const String startImagePath = 'assets/star.png';
  static const String todayShoeImagePath = 'assets/todayShoe.png';
  static const String percentageDiscount = '25';
  static NumberFormat format = NumberFormat.currency(
    locale: 'HI',
    symbol: '₹ ',
    decimalDigits: 0,
  );
}
