import 'package:intl/intl.dart';

class DateFormatter {
  DateFormatter._();

  static String formatBirthDate(String date) {
    return DateFormat("dd/MM/yyyy").format(DateTime.parse(date));
  }

  static String formatCreatedDate(String date) {
    return DateFormat("dd/MM/yyyy").format(DateFormat("dd-MM-yyyy HH:mm:ss").parse(date));
  }
}
