import 'package:flutter/material.dart';
import 'package:payment_card_ui/widgets/nm_box.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      decoration: nmBox,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Master Card',
                style: TextStyle(
                  color: grayshade700,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.more_horiz,
                color: grayshade700,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '* * * *',
                style: TextStyle(
                  color: grayshade700,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '* * * *',
                style: TextStyle(
                  color: grayshade700,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '* * * *',
                style: TextStyle(
                  color: grayshade700,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '3215',
                style: TextStyle(
                  color: grayshade700,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Card Holder',
                    style: TextStyle(
                      color: redshade200,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Ajay Chauhan',
                    style: TextStyle(
                      color: grayshade700,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Expires',
                    style: TextStyle(
                      color: redshade200,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '11 / 21',
                    style: TextStyle(
                      color: grayshade700,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}