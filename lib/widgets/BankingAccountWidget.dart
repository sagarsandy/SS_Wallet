import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ss_wallet/models/BankingAccount.dart';
import 'package:ss_wallet/widgets/OptionsWidget.dart';

class BankingAccountWidget extends StatelessWidget {
  final BankingAccount bankingAccount;
  BankingAccountWidget(this.bankingAccount);

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
                        bankingAccount.title,
                        style: TextStyle(fontSize: 25, color: Colors.black54),
                      ),
                      Text(
                        "Current Balance : " + bankingAccount.amount.toString(),
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ),
              OptionsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
