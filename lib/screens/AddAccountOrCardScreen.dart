import 'package:flutter/material.dart';
import 'package:ss_wallet/widgets/BankAccountFormWidget.dart';
import 'package:ss_wallet/widgets/CreditCardFormWidget.dart';

class AddAccountOrCardScreen extends StatelessWidget {
  final int tabIndex;
  AddAccountOrCardScreen(this.tabIndex);
  final _creditCardFormKey = GlobalKey<FormState>();
  final _bankAccountFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFf4e04d),
        title: Text(
          tabIndex == 1 ? "Add Credit Card" : "Add Banking Account",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Container(
              width: double.infinity,
              child: tabIndex == 1
                  ? Column(
                      children: <Widget>[
                        CreditCardFormWidget(
                            creditCardFormKey: _creditCardFormKey,
                            validateName: (nameValue) {
                              if (nameValue.isEmpty) {
                                return 'Please enter card name';
                              }
                              return null;
                            },
                            validateTotalLimit: (totalLimitValue) {
                              if (totalLimitValue.isEmpty) {
                                return 'Please enter total limit of this card';
                              }
                              return null;
                            },
                            validateLimitLeft: (limitLeftValue) {
                              if (limitLeftValue.isEmpty) {
                                return 'Please enter total limit of this card';
                              }
                              return null;
                            },
                            validateCardNumber: (cardNumberValue) {
                              if (cardNumberValue.isEmpty) {
//                              return 'Please enter card number';
                              }
                              return null;
                            },
                            validateExpiryMonth: (expiryMonthValue) {
                              if (expiryMonthValue.isEmpty) {
//                              return 'Please enter card expiry month';
                              }
                              return null;
                            },
                            validateExpiryYear: (expiryYearValue) {
                              if (expiryYearValue.isEmpty) {
//                              return 'Please enter total limit of this card';
                              }
                              return null;
                            },
                            validateCVV: (cvvValue) {
                              if (cvvValue.isEmpty) {
//                              return 'Please enter cvv';
                              }
                              return null;
                            },
                            validateCreditCardForm: () {
                              if (_creditCardFormKey.currentState.validate()) {
                                print('Adding Credit card');
                              }
                            })
                      ],
                    )
                  : Column(
                      children: <Widget>[
                        BankAccountFormWidget(
                            bankAccountFormKey: _bankAccountFormKey,
                            validateName: (nameValue) {
                              if (nameValue.isEmpty) {
                                return 'Please enter account name';
                              }
                              return null;
                            },
                            validateAccountNumber: (accountNumberValue) {
                              if (accountNumberValue.isEmpty) {
                                return 'Please enter account number';
                              }
                              return null;
                            },
                            validateCurrentBalance: (currentBalanceValue) {
                              if (currentBalanceValue.isEmpty) {
                                return 'Please enter current balance in this account';
                              }
                              return null;
                            },
                            validateIFSCCode: (ifscCodeValue) {
                              if (ifscCodeValue.isEmpty) {
//                              return 'Please enter bank IFSC Code';
                              }
                              return null;
                            },
                            validateMICRCode: (micrCodeValue) {
                              if (micrCodeValue.isEmpty) {
//                              return 'Please enter bank MICR Code';
                              }
                              return null;
                            },
                            validateOtherNotes: (otherNotesValue) {
                              if (otherNotesValue.isEmpty) {
                                return 'Please enter any missing details';
                              }
                            },
                            validateBankAccountForm: () {
                              if (_bankAccountFormKey.currentState.validate()) {
                                print('Adding Bank Account');
                              }
                            })
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
