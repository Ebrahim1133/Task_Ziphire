import '../core/split/split.dart';

class SplitTopUp extends Split {
  @override
  static List<dynamic> split(List<String> listTopup) {
    /// Split Topup to Topup and Topup
    var listOfTopupAndNumber = [];
    for (String i in listTopup) {
      listOfTopupAndNumber.add(i.split(" "));
    }

    /// Return List of Topup and number
    return listOfTopupAndNumber;
  }
}
