import 'package:flutter/material.dart';

class BankAccountFormWidget extends StatelessWidget {
  final GlobalKey<FormState> bankAccountFormKey;
  final Function validateName;
  final Function validateAccountNumber;
  final Function validateCurrentBalance;
  final Function validateIFSCCode;
  final Function validateMICRCode;
  final Function validateOtherNotes;
  final Function validateBankAccountForm;

  BankAccountFormWidget({
    Key key,
    this.bankAccountFormKey,
    this.validateName,
    this.validateAccountNumber,
    this.validateCurrentBalance,
    this.validateIFSCCode,
    this.validateMICRCode,
    this.validateOtherNotes,
    this.validateBankAccountForm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: bankAccountFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'Bank Name*',
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 12.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateName,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'Account Number*',
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Account Numebr',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateAccountNumber,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'Current Balance*',
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Current Balance',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateCurrentBalance,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'IFSC Code',
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'IFSC Code',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateIFSCCode,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'MICR Code',
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Container(
                  height: 50,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'MICR Code',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateMICRCode,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'Notes',
                  style: TextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                child: Container(
                  height: 100,
                  child: TextFormField(
                    maxLines: 5,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: 'Other details',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateMICRCode,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 5),
                child: Center(
                  child: RaisedButton(
                    color: Color(0xFFC96FF7),
                    textColor: Colors.white,
                    onPressed: validateBankAccountForm,
                    child: Text('Save This Account'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
