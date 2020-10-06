import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreditCardFormWidget extends StatelessWidget {
  final GlobalKey<FormState> creditCardFormKey;
  final Function validateName;
  final Function validateTotalLimit;
  final Function validateLimitLeft;
  final Function validateCardNumber;
  final Function validateExpiryMonth;
  final Function validateExpiryYear;
  final Function validateCVV;
  final Function validateCreditCardForm;

  CreditCardFormWidget({
    Key key,
    this.creditCardFormKey,
    this.validateName,
    this.validateTotalLimit,
    this.validateLimitLeft,
    this.validateCardNumber,
    this.validateExpiryMonth,
    this.validateExpiryYear,
    this.validateCVV,
    this.validateCreditCardForm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: creditCardFormKey,
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
                  'Card Name*',
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
                  'Total Limit*',
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
                      hintText: 'Total Limit',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateTotalLimit,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'Limit Left',
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
                      hintText: 'Limit Left',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateLimitLeft,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 15.0, bottom: 5),
                child: Text(
                  'Card Number',
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
                      hintText: 'Card Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2.0,
                            style: BorderStyle.solid),
                      ),
                    ),
                    validator: validateCardNumber,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                'Month',
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              height: 45,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: 'Month',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                                validator: validateExpiryMonth,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                'Year',
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              height: 45,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: 'Year',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                                validator: validateExpiryYear,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                'CVV',
                                style: TextStyle(),
                              ),
                            ),
                            Container(
                              height: 45,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: 'CVV',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black54,
                                        width: 2.0,
                                        style: BorderStyle.solid),
                                  ),
                                ),
                                validator: validateCVV,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0, bottom: 5),
                child: Center(
                  child: RaisedButton(
                    color: Color(0xFFC96FF7),
                    textColor: Colors.white,
                    onPressed: validateCreditCardForm,
                    child: Text('Save This Card'),
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
