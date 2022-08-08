import 'dart:io';

import 'package:intl/intl.dart';

import '../core/uilts/constances.dart';

class DateFromatAndHandling {
  static DateTime dataFromating() {
    /// Enter Date
    stdout.write(AppConstance.START_SUBSCRIPTION);
    String? dateTime = stdin.readLineSync();

    /// Split Date to years , months and days
    var spiltofDate = dateTime!.split("-");

    /// Convert Date to Utc
    var dateUtc = DateTime.utc(int.parse(spiltofDate[2]),
        int.parse(spiltofDate[1]), int.parse(spiltofDate[0]));

    /// Format Date Using intl Package(External Library)
    DateFormat formatter = DateFormat(AppConstance.FROMAT_PATTERN);
    formatter.format(dateUtc);

    /// Handling Exception Date
    if (dateTime != formatter.format(dateUtc)) {
      throw AppConstance.INVALID_DATE;
    }

    /// return Date After Fromating and Handling('dd-MM-yyyy')

    return dateUtc;
  }
}
