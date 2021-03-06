import 'package:crypto_dashboard/coin.dart';
import 'package:crypto_dashboard/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CoinCard extends StatelessWidget {
  final Coin coin;
  const CoinCard({required this.coin});
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Slidable(
      // endActionPane: SlidableDrawerActionPane(),
      // actionExtentRatio: 0.25,
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (BuildContext context) {
          //       return CoinDetail(coin: this.coin);
          //     },
          //   ),
          // );
        },
        child: Container(
          height: 90.0,
          color: Color.fromRGBO(55, 66, 92, 0.4),
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Row(
            children: [
              Container(
                width: 40.0,
                child: Image.asset(
                  coin.getImagePath(),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${coin.toString()} (${coin.getCoinAbbr()})",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "${coin.balance}",
                    style:
                        themeData.textTheme.caption?.copyWith(fontSize: 14.0),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$${coin.currentPrice}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        getCoinProgress(coin),
                        style: TextStyle(
                          color: coin.trend == Trend.UP
                              ? kSuccessColor
                              : kDangerColor,
                          fontSize: 13.0,
                        ),
                      ),
                      Icon(
                        coin.trend == Trend.UP
                            ? Icons.arrow_upward
                            : Icons.arrow_downward,
                        size: 14.0,
                        color: coin.trend == Trend.UP
                            ? kSuccessColor
                            : kDangerColor,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      // actions: <Widget>[
      //   IconSlideAction(
      //     color: kDangerColor,
      //     icon: FlutterIcons.x_fea,
      //     foregroundColor: Colors.white,
      //     onTap: () => null,
      //   ),
      // ],
      // secondaryActions: <Widget>[
      //   IconSlideAction(
      //     color: kSuccessColor,
      //     icon: FlutterIcons.plus_fea,
      //     foregroundColor: Colors.white,
      //     onTap: () => null,
      //   ),
      // ],
    );
  }
}

String getCoinProgress(Coin coin) {
  String returnValue = "";

  if (coin.trend == Trend.UP) {
    returnValue += "+";
  } else {
    returnValue += "-";
  }

  returnValue += "\$${coin.amountProgress} (${coin.percentProgress}%)";

  return returnValue;
}
