import 'dart:io';

import 'package:intl/intl.dart';

class ExecuteCode {
  static void executeCode() {
    //datetime

/*
1- format input
2- handling exp
*/
//1- format input
    stdout.write('START_SUBSCRIPTION ');
    String? d = stdin.readLineSync();
    var s = d!.split("-");
    var date = DateTime.utc(int.parse(s[2]), int.parse(s[1]), int.parse(s[0]));
    DateFormat formatter = DateFormat('dd-MM-yyyy');
    var h = formatter.format(date);
//2- handling exp
    if (d != formatter.format(date)) throw "INVALID_DATE";

// ADD_SUBSCRIPTION

/*
1- for loop 3 times (3 add sub in must)
2- spilt each add to catgroy and plan
3- check for each catgroy find only once
4- check for each catgroy and select add date
5- check for each plan and count price and store it
*/

//1- for loop 3 times (3 add sub in must)
    var x = [];
    for (int i = 0; i <= 2; i++) {
      stdout.write('do you want contain add sub more or not (yes or no)? ');
      String? f = stdin.readLineSync();
      if (f!.toLowerCase().trim() == 'yes') {
        stdout.write('ADD_SUBSCRIPTION ');
        String? f1 = stdin.readLineSync();
        x.add(f1);
        continue;
      } else if (f.toLowerCase().trim() == 'no') {
        break;
      } else {
        throw 'SUBSCRIPTIONS_NOT_FOUND';
      }
    }
//2- spilt each add to catgroy and plan
    var t = [];
    for (String i in x) {
      t.add(i.split(" "));
    }
    // print(t);
    var cat = [];
    var plan = [];
    for (var i in t) {
      for (String g in i) {
        g = g.toUpperCase().trim();
        if (g == 'MUSIC' || g == 'VIDEO' || g == 'PODCAST') {
          cat.add(g);
        } else {
          plan.add(g);
        }
      }
    }

// 3- check for each catgroy find only once

    int countm = 0;
    int countv = 0;
    int countp = 0;
    for (String d in cat) {
      d = d.trim();
      if (d == 'MUSIC') {
        countm += 1;
      } else if (d == 'VIDEO') {
        countv += 1;
      } else {
        countp += 1;
      }
    }
    if (countp > 1 || countv > 1 || countm > 1) {
      throw 'DUPLICATE_CATEGORY';
    }

//4- check for each plan and select add date
    DateTime per = DateTime.now();
    DateTime per2 = DateTime.now();
    DateTime fre = DateTime.now();
    var dataadd = [];
    for (String k in plan) {
      k = k.trim();
      if (k == 'PERSONAL') {
        per = date.add(Duration(days: 18));
        DateFormat formatter = DateFormat('dd-MM-yyyy');

        dataadd.add(formatter.format(per));
      } else if (k == 'PREMIUM') {
        per2 = date.add(Duration(days: 79));
        DateFormat formatter = DateFormat('dd-MM-yyyy');

        dataadd.add(formatter.format(per2));
      } else {
        fre = date.add(Duration(days: 18));
        DateFormat formatter = DateFormat('dd-MM-yyyy');
        dataadd.add(formatter.format(fre));
      }
    }
    // print(dataadd);

//5- check for each plan and count price and store it
    int pricemp = 0;
    int pricemf = 0;
    int pricemp1 = 0;
    int pricevp = 0;
    int pricevf = 0;
    int pricevp1 = 0;
    int pricepp = 0;
    int pricepf = 0;
    int pricepp1 = 0;

    List<int> pr = [];
    int sum = 0;

    for (int i = 0; i < t.length; i++) {
      for (int j = 0; j < 2; j++) {
        if (t[i][j] == 'MUSIC') {
          if (t[i][j + 1] == 'PERSONAL') {
            pricemp = 1 * 100;
            pr.add(pricemp);
          } else if (t[i][j + 1] == 'PREMIUM') {
            pricemp1 = 1 * 250;
            pr.add(pricemp1);
          } else if (t[i][j + 1] == 'FREE') {
            pricemf = 0;
            pr.add(pricemf);
          }
        }
        if (t[i][j] == 'VIDEO') {
          if (t[i][j + 1] == 'PERSONAL') {
            pricevp = 1 * 200;
            pr.add(pricevp);
          } else if (t[i][j + 1] == 'PREMIUM') {
            pricevp1 = 1 * 500;
            pr.add(pricevp1);
          } else if (t[i][j + 1] == 'FREE') {
            pricevf = 0;
            pr.add(pricevf);
          }
        }
        if (t[i][j] == 'PODCAST') {
          if (t[i][j + 1] == 'PERSONAL') {
            pricepp = 1 * 100;
            pr.add(pricepp);
          } else if (t[i][j + 1] == 'PREMIUM') {
            pricepp1 = 1 * 300;
            pr.add(pricepp1);
          } else if (t[i][j + 1] == 'FREE') {
            pricepf = 0;
            pr.add(pricepf);
          }
        }
      }
    }
    pr.forEach((e) => sum += e);

//ADD_TOPUP
/*
1- for loop 3 times (3 add top up  in must)
2- spilt each add to catgroy and name of months
3- check for each catgroy find only once
4- check for each plan and count price and store it
*/
//1- for loop 3 times (3 add top up  in must)
    var x1 = [];

    stdout.write('do you want contain add TOPUP more or not (yes or no)? ');
    String? f = stdin.readLineSync();
    if (f!.toLowerCase().trim() == 'yes') {
      stdout.write('ADD_TOPUP ');
      String? f1 = stdin.readLineSync();
      x1.add(f1);
    } else if (f.toLowerCase().trim() == 'no') {
      stdout.write('thanks');
    } else {
      throw 'TOPUP_NOT_FOUND';
    }
// 2- spilt each add to catgroy and name of months
    var t1 = [];
    for (String i in x1) {
      t1.add(i.split(" "));
    }
    // print(t);
    var cat1 = [];
    var num = [];
    for (var i in t1) {
      for (String g in i) {
        g = g.toUpperCase().trim();
        if (g == 'FOUR_DEVICE' || g == 'TEN_DEVICE') {
          cat1.add(g);
        } else {
          num.add(g);
        }
      }
    }
//3- check for each catgroy find only once

    int countm1 = 0;
    int countv1 = 0;
    for (String d in cat) {
      d = d.trim();
      if (d == 'FOUR_DEVICE') {
        countm1 += 1;
      } else if (d == 'TEN_DEVICE') {
        countv1 += 1;
      }
    }
    if (countv1 > 1 || countm1 > 1) {
      throw 'DUPLICATE_CATEGORY';
    }
// check for each plan and count price and store it
    int pricemp2 = 0;
    int sum1 = 0;
    int pricemf1 = 0;
    List<int> pr1 = [];

    for (int i = 0; i < t1.length; i++) {
      for (int j = 0; j < 2; j++) {
        if (t1[i][j] == 'FOUR_DEVICE') {
          pricemp2 = 50 * int.parse(t1[i][j + 1]);
          pr1.add(pricemp2);
        }
        if (t1[i][j] == 'TEN_DEVICE') {
          pricemf1 = 100 * int.parse(t1[i][j + 1]);
          pr1.add(pricemf1);
        }
      }
    }
    pr1.forEach((e) => sum1 += e);

    stdout.write('Enter to show result : PRINT_RENEWAL_DETAILS ');
    String? r = stdin.readLineSync();

    if (r!.toUpperCase().trim() == 'PRINT_RENEWAL_DETAILS') {
      print("");
      print('RENEWAL_REMINDER ${cat[0]} ${dataadd[0]}');
      print('RENEWAL_REMINDER ${cat[1]} ${dataadd[1]}');
      print('RENEWAL_REMINDER ${cat[2]} ${dataadd[2]}');
      print('RENEWAL_AMOUNT ${sum + sum1}');
    }
  }
}
