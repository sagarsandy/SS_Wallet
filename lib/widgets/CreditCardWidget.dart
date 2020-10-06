import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ss_wallet/models/CreditCard.dart';
import 'package:ss_wallet/widgets/OptionsWidget.dart';

class CreditCardWidget extends StatelessWidget {
  final CreditCard creditCard;
  CreditCardWidget(this.creditCard);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 130,
        child: Card(
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        creditCard.title,
                        style: TextStyle(fontSize: 25, color: Colors.black54),
                      ),
                      Text(
                        "Total Limit : " + creditCard.totalLimit.toString(),
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                      Text(
                        "Limit Left : " + creditCard.limitLeft.toString(),
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
              OptionsWidget()
            ],
          ),
        ),
      ),
    );
  }
}
