import 'dart:io';

import '../core/uilts/constances.dart';

class AddSubscription {
  static List<String> addSubscription() {
    bool error = false;

    /// Create an empty list in which subscriptions are stored
    /// and make a loop to be able to add a maximum of subscriptions for each user
    List<String> listSubscriptin = [];
    for (int i = 0; i <= 2; i++) {
      /// Enter Add anther Subscription or Not
      stdout.write(AppConstance.QUESTION_CONTAINUS_SUBSCRIPTION);
      String? containSub = stdin.readLineSync();

      /// Check that the user wants to add another subscription or not
      /// and with adding any subscription to the list of subscriptions
      if (containSub!.toLowerCase().trim() == 'yes') {
        stdout.write(AppConstance.ADD_SUBSCRIPTION);
        String? addSubscriptin = stdin.readLineSync();
        listSubscriptin.add(addSubscriptin!);
        continue;

        /// Case Enter no
      } else if (containSub.toLowerCase().trim() == 'no') {
        if (listSubscriptin.isEmpty && i == 2) {
          print(AppConstance.SUBSCRIPTIONS_NOT_FOUND);
          // throw AppConstance.SUBSCRIPTIONS_NOT_FOUND ;
        } else {
          continue;
        }
      }

      /// If you do not add any subscription or enter the wrong subscriptions
      else {
        print(AppConstance.SUBSCRIPTIONS_NOT_FOUND);
        // throw AppConstance.SUBSCRIPTIONS_NOT_FOUND ;
      }
    }

    /// Returns a list containing all subscriptions
    return listSubscriptin;
  }
}
