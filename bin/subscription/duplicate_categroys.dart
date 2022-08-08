import '../core/duplicate_expcetion/duplicate.dart';
import '../core/uilts/constances.dart';

class DuplicateCategroys with Duplicate {
  static void checkDuplicate(List<String> listOfCategroys) {
    int countOfMusic = 0;
    int countOfVideo = 0;
    int countOfPodecast = 0;

    /// Check of Count of each Categroy and do not Duplicate
    for (String categroy in listOfCategroys) {
      categroy = categroy.trim();
      if (categroy == AppConstance.MUSIC) {
        countOfMusic += 1;
      } else if (categroy == AppConstance.VIDEO) {
        countOfVideo += 1;
      } else {
        countOfPodecast += 1;
      }
    }
    if (countOfMusic > 1 || countOfVideo > 1 || countOfPodecast > 1) {
      throw AppConstance.DUPLICATE_CATEGORY;
    }
  }
}
