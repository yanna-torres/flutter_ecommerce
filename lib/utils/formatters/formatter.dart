import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String number) {
    if (number.length == 10) {
      return '(${number.substring(0, 3)}) ${number.substring(3, 6)}-${number.substring(6, 10)}';
    } else if (number.length == 11) {
      return '(${number.substring(0, 4)}) ${number.substring(4, 7)}-${number.substring(7, 11)}';
    } else {
      return number;
    }
  }

  static String internationalFormatPhoneNumber(String number) {
    var digitsOnly = number.replaceAll(RegExp(r'\D'), '');

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('$countryCode ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLenght = 2;
      if (i == 0 && countryCode == '+1') {
        groupLenght = 3;
      }

      int end = i + groupLenght;
      formattedNumber.write(digitsOnly.substring(i, end));
      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}
