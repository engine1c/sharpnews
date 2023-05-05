import 'package:intl/intl.dart';

class DateUtils {
  static String currentDate() {
    var now = DateTime.now();
    final later = now.add(const Duration(hours: -48));
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(later);
    return formattedDate; //
  }
}
