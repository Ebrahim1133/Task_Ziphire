import '../core/split/split.dart';

class SplitSubscription extends Split {
  @override
  static List<dynamic> split(List<String> listSubscriptin) {
    /// Split Subscriptions to Categroys and Plans
    var listOfCategroysAndPlans = [];
    for (String i in listSubscriptin) {
      listOfCategroysAndPlans.add(i.split(" "));
    }

    /// Return List of Categroys and Plans
    return listOfCategroysAndPlans;
  }
}
