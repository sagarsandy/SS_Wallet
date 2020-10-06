import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ss_wallet/models/BankingAccount.dart';
import 'package:ss_wallet/models/CreditCard.dart';
import 'package:ss_wallet/screens/AddAccountOrCardScreen.dart';
import 'package:ss_wallet/widgets/BankingAccountWidget.dart';
import 'package:ss_wallet/widgets/CreditCardWidget.dart';

enum WidgetMarker { accounts, cards, wallet, lists, settings }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SS Wallet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'SS Wallet'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin<MyHomePage> {
  WidgetMarker selectedWidgetMarker = WidgetMarker.accounts;
  AnimationController _controller;
  Animation _animation;
  int tabSelectedIndex = 0;
  var appBarTitle = "SS Wallet";

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTabItemTapped(int index) {
    setState(() {
      tabSelectedIndex = index;
      if (index == 0) {
        appBarTitle = "Banking Accounts";
        selectedWidgetMarker = WidgetMarker.accounts;
      } else if (index == 1) {
        appBarTitle = "Credit Cards";
        selectedWidgetMarker = WidgetMarker.cards;
      } else if (index == 2) {
        appBarTitle = "SS Wallet";
        selectedWidgetMarker = WidgetMarker.wallet;
      } else if (index == 3) {
        appBarTitle = "Transactions";
        selectedWidgetMarker = WidgetMarker.lists;
      } else if (index == 4) {
        appBarTitle = "Settings";
        selectedWidgetMarker = WidgetMarker.settings;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFf4e04d),
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddAccountOrCardScreen(tabSelectedIndex),
            ),
          );
        },
        backgroundColor: Color(0XFFffd31d),
        child: Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: FFNavigationBar(
        selectedIndex: tabSelectedIndex,
        onSelectTab: (index) {
          _onTabItemTapped(index);
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.account_balance,
            label: 'Accounts',
          ),
          FFNavigationBarItem(
            iconData: Icons.credit_card,
            label: 'Cards',
          ),
          FFNavigationBarItem(
            iconData: Icons.account_balance_wallet,
            label: 'Wallet',
          ),
          FFNavigationBarItem(
            iconData: Icons.view_list,
            label: 'List',
          ),
          FFNavigationBarItem(
            iconData: Icons.settings,
            label: 'Settings',
          ),
        ],
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Color(0XFFf3c623),
          selectedItemBackgroundColor: Colors.white,
          selectedItemIconColor: Color(0XFFf3c623),
          selectedItemLabelColor: Color(0XFFf3c623),
        ),
      ),
      body: FutureBuilder(
        future: _playAnimation(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return getCustomContainer();
        },
      ),
    );
  }

  _playAnimation() {
    _controller.reset();
    _controller.forward();
  }

  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.accounts:
        return showBankingAccountsScreen();
      case WidgetMarker.cards:
        return showCreditCardsScreen();
      case WidgetMarker.wallet:
        return Container(
          color: Colors.blue,
          width: 300,
          height: 300,
        );
      case WidgetMarker.lists:
        return Container(
          color: Colors.orange,
          width: 300,
          height: 300,
        );
      case WidgetMarker.settings:
        return Container(
          color: Colors.cyan,
          width: 300,
          height: 300,
        );
    }
    return Container(
      color: Colors.pink,
      width: 300,
      height: 300,
    );
  }

  List<BankingAccount> _bankingAccounts = [
    BankingAccount(id: 1, title: "Axis Bank", amount: 35600),
    BankingAccount(id: 2, title: "HDFC Bank", amount: 24989),
    BankingAccount(id: 3, title: "SBI Bank", amount: 12224989.23),
    BankingAccount(id: 4, title: "Axis Bank", amount: 35600),
    BankingAccount(id: 5, title: "HDFC Bank", amount: 24989),
    BankingAccount(id: 6, title: "SBI Bank", amount: 12224989.23),
  ];

  Widget showBankingAccountsScreen() {
    return FadeTransition(
      opacity: _animation,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return BankingAccountWidget(_bankingAccounts[index]);
        },
        itemCount: _bankingAccounts.length,
      ),
    );
  }

  List<CreditCard> _creditCards = [
    CreditCard(id: 1, title: "RBL Bank", totalLimit: 125000, limitLeft: 25000),
    CreditCard(id: 2, title: "Citi Bank", totalLimit: 55000, limitLeft: 35000),
    CreditCard(id: 3, title: "HDFC Bank", totalLimit: 150000, limitLeft: 5000),
  ];

  Widget showCreditCardsScreen() {
    return FadeTransition(
      opacity: _animation,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return CreditCardWidget(_creditCards[index]);
        },
        itemCount: _creditCards.length,
      ),
    );
  }
}
