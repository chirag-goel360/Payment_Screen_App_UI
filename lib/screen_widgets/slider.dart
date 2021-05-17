import 'package:flutter/material.dart';
import 'package:payment_card_ui/main.dart';
import 'package:payment_card_ui/widgets/nm_box.dart';

class TransactionSlider extends StatefulWidget {
  @override
  _TransactionSliderState createState() => _TransactionSliderState();
}

class _TransactionSliderState extends State<TransactionSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Transaction Limit',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '₹ ' + transLimit.toStringAsFixed(0),
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.green.shade500,
            inactiveTrackColor: redshade200.withOpacity(0.25),
            trackHeight: 5,
            thumbColor: white,
            overlayColor: white.withOpacity(0.75),
          ),
          child: Slider(
            value: transLimit,
            min: 1,
            max: 10000,
            onChanged: (limitInput) {
              setState(() {
                transLimit = limitInput;
              });
            },
          ),
        ),
      ],
    );
  }
}
