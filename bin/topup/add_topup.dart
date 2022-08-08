import 'dart:io';

import '../core/uilts/constances.dart';

class AddTopUp {
  //List<String> listOfCategroys
  static List<String> addTopUP() {
    /// Add TopUp and Check Found or Notify (listOfCategroys.isNotEmpty) {
    List<String> listOfTopUp = [];
    // if(listOfCategroys.isNotEmpty){
    for (int i = 0; i <= 1; i++) {
      stdout.write(AppConstance.QUESTION_CONTAINUS_TOP_UP);
      String? check = stdin.readLineSync();
      if (check!.toLowerCase().trim() == 'yes') {
        stdout.write(AppConstance.ADD_TOPUP);
        String? topUp = stdin.readLineSync();
        listOfTopUp.add(topUp!);
      } else if (check.toLowerCase().trim() == 'no') {
        if (listOfTopUp.isEmpty && i == 1) {
          throw AppConstance.TOPUP_NOT_FOUND;
        }
      }
    }
    // }
    // else{
    //   print("ADD_TOPUP_FAILED ${AppConstance.SUBSCRIPTIONS_NOT_FOUND}");
    //   // throw "ADD_TOPUP_FAILED ${AppConstance.SUBSCRIPTIONS_NOT_FOUND}";
    //
    // }
    //
    /// List of TopUp
    return listOfTopUp;
  }
}
