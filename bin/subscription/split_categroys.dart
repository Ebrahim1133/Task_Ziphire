import '../core/split/split.dart';
import '../core/uilts/constances.dart';

class SplitCategroys extends Split {
  @override
  static List<String> split(List<dynamic> listOfCategroysAndPlans) {
    /// Split List of Categroys and PLans to List of Categroys
    List<String> listOfCategroys = [];

    for (var i in listOfCategroysAndPlans) {
      for (String categroy in i) {
        categroy = categroy.toUpperCase().trim();
        if (categroy == AppConstance.MUSIC ||
            categroy == AppConstance.VIDEO ||
            categroy == AppConstance.PODCAST) {
          listOfCategroys.add(categroy);
        }
      }
    }

    /// Return List of Categroys
    return listOfCategroys;
  }
}
