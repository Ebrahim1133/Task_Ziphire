import 'dart:io';

import '../core/uilts/constances.dart';

class Output {
  static void Result(
      List<String> listOfCategroys,
      List<dynamic> listOfNotifyDates,
      List<dynamic> listOfTopUps,
      int totalPriceOfCategroys,
      int totalPriceOfTopUp) {
    stdout.write(AppConstance.PRINT_RENEWAL_DETAILS);
    String? r = stdin.readLineSync();

    if (r!.toUpperCase().trim() == 'PRINT_RENEWAL_DETAILS') {
      print("");

      if (listOfCategroys.isEmpty && listOfTopUps.isNotEmpty) {
        print("ADD_TOPUP_FAILED ${AppConstance.SUBSCRIPTIONS_NOT_FOUND}");
      }
      if (listOfCategroys.isEmpty) {
        print(AppConstance.SUBSCRIPTIONS_NOT_FOUND);
      } else {
        if (listOfCategroys.length == 1) {
          print(
              '${AppConstance.RENEWAL_REMINDER} ${listOfCategroys[0]} ${listOfNotifyDates[0]}');
          print(
              '${AppConstance.RENEWAL_AMOUNT}   ${totalPriceOfCategroys + totalPriceOfTopUp}');
        } else if (listOfCategroys.length == 2) {
          print(
              '${AppConstance.RENEWAL_REMINDER} ${listOfCategroys[0]} ${listOfNotifyDates[0]}');
          print(
              '${AppConstance.RENEWAL_REMINDER} ${listOfCategroys[1]} ${listOfNotifyDates[1]}');
          print(
              '${AppConstance.RENEWAL_AMOUNT}   ${totalPriceOfCategroys + totalPriceOfTopUp}');
        } else {
          print(
              '${AppConstance.RENEWAL_REMINDER} ${listOfCategroys[0]} ${listOfNotifyDates[0]}');
          print(
              '${AppConstance.RENEWAL_REMINDER} ${listOfCategroys[1]} ${listOfNotifyDates[1]}');
          print(
              '${AppConstance.RENEWAL_REMINDER} ${listOfCategroys[2]} ${listOfNotifyDates[2]}');
          print(
              '${AppConstance.RENEWAL_AMOUNT}   ${totalPriceOfCategroys + totalPriceOfTopUp}');
        }
      }
    }
  }
}
