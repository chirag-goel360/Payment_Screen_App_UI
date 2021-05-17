import 'package:flutter/material.dart';
import 'package:payment_card_ui/screen_widgets/button.dart';
import 'package:payment_card_ui/screen_widgets/card.dart';
import 'package:payment_card_ui/screen_widgets/credit_card.dart';
import 'package:payment_card_ui/screen_widgets/slider.dart';
import 'package:payment_card_ui/widgets/color_setter.dart';
import 'package:payment_card_ui/widgets/nm_box.dart';

double transLimit = 5000;

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainCard(),
    );
  }
}

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: grayshade100,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NMButton(
                    down: false,
                    icon: Icons.arrow_back,
                    color: Colors.pink,
                  ),
                  NMButton(
                    down: false,
                    icon: Icons.search,
                    color: Colors.red,
                  ),
                ],
              ),
              GradientText(
                'Main Card',
                weight: FontWeight.w700,
                textfont: 30,
                textalign: TextAlign.center,
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.pink,
                    Colors.purple,
                    Colors.deepPurple,
                    Colors.deepPurple,
                    Colors.indigo,
                    Colors.blue,
                    Colors.lightBlue,
                    Colors.cyan,
                    Colors.teal,
                    Colors.green,
                    Colors.lightGreen,
                    Colors.lime,
                    Colors.yellow,
                    Colors.amber,
                    Colors.orange,
                    Colors.deepOrange,
                  ],
                ),
              ),
              CreditCard(),
              NMCard(
                active: false,
                icon: Icons.wifi,
                label: 'NFC Payment',
              ),
              NMCard(
                active: true,
                icon: Icons.attach_money,
                label: 'Deposit',
              ),
              NMCard(
                active: true,
                icon: Icons.lock_outline,
                label: 'Fast blocking',
              ),
              TransactionSlider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  NMButton(
                    down: false,
                    icon: Icons.home,
                    color: Colors.purpleAccent,
                  ),
                  NMButton(
                    down: true,
                    icon: Icons.credit_card,
                    color: Colors.teal,
                  ),
                  NMButton(
                    down: false,
                    icon: Icons.trending_up,
                    color: Colors.green,
                  ),
                  NMButton(
                    down: false,
                    icon: Icons.notifications_none,
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
