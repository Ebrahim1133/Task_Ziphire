import '../core/duplicate_expcetion/duplicate.dart';
import '../core/uilts/constances.dart';

class DuplicateTopUp with Duplicate {
  static void checkDuplicate(List<dynamic> listOfTopUps) {
    /// Check of Count of each TopUP and do not Duplicate

    if (listOfTopUps.length > 1) {
      throw AppConstance.DUPLICATE_TOPUP;
    }
  }
}
