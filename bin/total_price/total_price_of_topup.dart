import '../core/uilts/constances.dart';

class TotalPriceOfTopUp {
  static int totalPriceOfTopUp(List<dynamic> listOfTopUps) {
    ///Make a price list for each category according to each plan
    ///and then according to the total price for all Catgroys prices
    int priceOfFourDevice = 0;
    int totalPriceOfTopUp = 0;
    int priceOfTenDevice = 0;
    List<int> pr1 = [];

    for (int i = 0; i < listOfTopUps.length; i++) {
      for (int j = 0; j < 2; j++) {
        if (listOfTopUps[i][j] == AppConstance.FOUR_DEVICE) {
          priceOfFourDevice = 50 * int.parse(listOfTopUps[i][j + 1]);
          pr1.add(priceOfFourDevice);
        }
        if (listOfTopUps[i][j] == AppConstance.TEN_DEVICE) {
          priceOfTenDevice = 100 * int.parse(listOfTopUps[i][j + 1]);
          pr1.add(priceOfTenDevice);
        }
      }
    }
    pr1.forEach((num) => totalPriceOfTopUp += num);
    return totalPriceOfTopUp;
  }
}
