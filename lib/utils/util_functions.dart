import 'package:intl/intl.dart';

class UtilFunctions {

  /// If the date is null, it returns a placeholder string '-- | --'.
  /// 
  /// [date] is the date string to be formatted.
  /// [pattern] is the pattern to format the date into. Default is 'MM/dd/yyyy'.
  /// [locale] is the locale to format the date into. Default is 'en_US'.
  static String formatDate({
    String? date,
    String pattern = 'MM/dd/yyyy',
    String locale = 'en_US',
  }) {
    if (date != null) {
      final stringDateToDatetime = DateTime.parse(date);
      final formattedDate =
          DateFormat(pattern, locale).format(stringDateToDatetime);
      return formattedDate;
    } else {
      return '-- | --';
    }
  }
}
