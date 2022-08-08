import '../core/split/split.dart';
import '../core/uilts/constances.dart';

class SplitPlans extends Split {
  @override
  static List<String> split(List<dynamic> listOfCategroysAndPlans) {
    /// Split List of Categroys and PLans to List of Plans
    List<String> listOfPlans = [];

    for (var i in listOfCategroysAndPlans) {
      for (String plan in i) {
        plan = plan.toUpperCase().trim();
        if (plan == AppConstance.PERSONAL ||
            plan == AppConstance.PREMIUM ||
            plan == AppConstance.FREE) {
          listOfPlans.add(plan);
        }
      }
    }

    /// Return List of Plans
    return listOfPlans;
  }
}
