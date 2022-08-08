import '../date/date_format.dart';
import '../notify/notify.dart';
import '../output/output.dart';
import '../subscription/add_subscription.dart';
import '../subscription/duplicate_categroys.dart';
import '../subscription/split_categroys.dart';
import '../subscription/split_plans.dart';
import '../subscription/split_subscriptions_to_categroys_plans.dart';
import '../topup/add_topup.dart';
import '../topup/duplicate_topup.dart';
import '../topup/split_topup_to_topups_number.dart';
import '../total_price/total_price_of_categroys.dart';
import '../total_price/total_price_of_topup.dart';

class ExecuteCode {
  static void executeCode() {
    /// START_SUBSCRIPTION
    DateTime dateUtc = DateFromatAndHandling.dataFromating();

    /// SUBSCRIPTION
    /// List of SUBSCRIPTIONS
    List<String> listSubscriptin = AddSubscription.addSubscription();

    /// Split Step
    /// Split List of Subscriptions to List Of Catgroys and Plans
    List listOfCategroysAndPlans = SplitSubscription.split(listSubscriptin);

    /// Split List of Catgroys and Plans to List Of Catgroys
    List<String> listOfCategroys =
        SplitCategroys.split(listOfCategroysAndPlans);

    /// Split List of Catgroys and Plans to List Of Plans
    List<String> listOfPlans = SplitPlans.split(listOfCategroysAndPlans);

    /// DUPLICATE_CATEGORY
    DuplicateCategroys.checkDuplicate(listOfCategroys);

    /// List containing the alarm history for each category according to each plan type
    List<dynamic> listOfNotifyDates =
        Notify.notifyListDates(listOfPlans, dateUtc);

    /// TotalPriceOfCategroys
    int totalPriceOfCategroys =
        TotalPriceOfCategroys.totalPriceOfCategroys(listOfCategroysAndPlans);

    /// TOPUP

    /// ListOfTopUp
    List<String> listOfTopUp = AddTopUp.addTopUP();

    /// Split List of TopUp to List Of TopUp Type and Number Of Months
    var listOfTopUps = SplitTopUp.split(listOfTopUp);

    /// DUPLICATE_TOPUP
    DuplicateTopUp.checkDuplicate(listOfTopUp);

    /// TotalPriceOfTopUp
    int totalPriceOfTopUp = TotalPriceOfTopUp.totalPriceOfTopUp(listOfTopUps);

    /// Final Output (Result)
    Output.Result(listOfCategroys, listOfNotifyDates, listOfTopUps,
        totalPriceOfCategroys, totalPriceOfTopUp);
  }
}
