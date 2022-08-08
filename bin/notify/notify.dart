import 'package:intl/intl.dart';

import '../core/uilts/constances.dart';

class Notify {
  static List<dynamic> notifyListDates(
      List<String> listOfPlans, DateTime dateUtc) {
    DateTime personalNotifyDate = DateTime.now();
    DateTime premiumNotifyDate = DateTime.now();
    DateTime freeNotifyDate = DateTime.now();
    var listOfNotifyDates = [];

    /// loop on  List of plans and check of each plan
    /// and add the alert date to the subscription history according to each plan type

    for (String plan in listOfPlans) {
      DateFormat formatter = DateFormat(AppConstance.FROMAT_PATTERN);
      plan = plan.toUpperCase().trim();
      if (plan == AppConstance.PERSONAL) {
        personalNotifyDate = dateUtc.add(Duration(days: 18));
        listOfNotifyDates.add(formatter.format(personalNotifyDate));
      } else if (plan == AppConstance.PREMIUM) {
        premiumNotifyDate = dateUtc.add(Duration(days: 79));
        listOfNotifyDates.add(formatter.format(premiumNotifyDate));
      } else {
        freeNotifyDate = dateUtc.add(Duration(days: 18));
        listOfNotifyDates.add(formatter.format(freeNotifyDate));
      }
    }

    /// Return List of Notify Dates
    return listOfNotifyDates;
  }
}
