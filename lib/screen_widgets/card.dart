import 'package:flutter/material.dart';
import 'package:payment_card_ui/widgets/nm_box.dart';

class NMCard extends StatelessWidget {
  final bool active;
  final IconData icon;
  final String label;
  const NMCard({
    this.active,
    this.icon,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 7,
      ),
      decoration: nmBox,
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: redshade200,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(
              color: grayshade700,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          Spacer(),
          Container(
            decoration: active ? nmBoxInvertActive : nmBoxInvert,
            width: 70,
            height: 40,
            child: Container(
              margin: active
                  ? EdgeInsets.fromLTRB(
                      35,
                      5,
                      5,
                      5,
                    )
                  : EdgeInsets.fromLTRB(
                      5,
                      5,
                      35,
                      5,
                    ),
              decoration: nmButton,
            ),
          ),
        ],
      ),
    );
  }
}
