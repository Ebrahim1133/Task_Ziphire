import '../core/uilts/constances.dart';

class TotalPriceOfCategroys {
  static int totalPriceOfCategroys(List<dynamic> listOfCategroysAndPlans) {
    ///Make a price list for each category according to each plan
    ///and then according to the total price for all Catgroys prices
    int PriceMusicOfPersonal = 0;
    int PriceMusicOfFree = 0;
    int PriceMusicOfPermium = 0;
    int PriceVideoOfPersonal = 0;
    int PriceVideoOfFree = 0;
    int PriceVideoOfPermium = 0;
    int PricePodcastOfPersonal = 0;
    int PricePodcastOfFree = 0;
    int PricePodcastOfPermium = 0;

    List<int> listOfCategryPrices = [];
    int totalPriceOfCategroys = 0;

    for (int i = 0; i < listOfCategroysAndPlans.length; i++) {
      for (int j = 0; j < 2; j++) {
        if (listOfCategroysAndPlans[i][j] == AppConstance.MUSIC) {
          if (listOfCategroysAndPlans[i][j + 1] == AppConstance.PERSONAL) {
            PriceMusicOfPersonal = 1 * 100;
            listOfCategryPrices.add(PriceMusicOfPersonal);
          } else if (listOfCategroysAndPlans[i][j + 1] ==
              AppConstance.PREMIUM) {
            PriceMusicOfPermium = 1 * 250;
            listOfCategryPrices.add(PriceMusicOfPermium);
          } else if (listOfCategroysAndPlans[i][j + 1] == AppConstance.FREE) {
            PriceMusicOfFree = 0;
            listOfCategryPrices.add(PriceMusicOfFree);
          }
        }
        if (listOfCategroysAndPlans[i][j] == AppConstance.VIDEO) {
          if (listOfCategroysAndPlans[i][j + 1] == AppConstance.PERSONAL) {
            PriceVideoOfPersonal = 1 * 200;
            listOfCategryPrices.add(PriceVideoOfPersonal);
          } else if (listOfCategroysAndPlans[i][j + 1] ==
              AppConstance.PREMIUM) {
            PriceVideoOfPermium = 1 * 500;
            listOfCategryPrices.add(PriceVideoOfPermium);
          } else if (listOfCategroysAndPlans[i][j + 1] == AppConstance.FREE) {
            PriceVideoOfFree = 0;
            listOfCategryPrices.add(PriceVideoOfFree);
          }
        }
        if (listOfCategroysAndPlans[i][j] == AppConstance.PODCAST) {
          if (listOfCategroysAndPlans[i][j + 1] == AppConstance.PERSONAL) {
            PricePodcastOfPersonal = 1 * 100;
            listOfCategryPrices.add(PricePodcastOfPersonal);
          } else if (listOfCategroysAndPlans[i][j + 1] ==
              AppConstance.PREMIUM) {
            PricePodcastOfPermium = 1 * 300;
            listOfCategryPrices.add(PricePodcastOfPermium);
          } else if (listOfCategroysAndPlans[i][j + 1] == AppConstance.FREE) {
            PricePodcastOfFree = 0;
            listOfCategryPrices.add(PricePodcastOfFree);
          }
        }
      }
    }
    listOfCategryPrices.forEach((price) => totalPriceOfCategroys += price);

    /// Return totalPriceOfCategroys
    return totalPriceOfCategroys;
  }
}
