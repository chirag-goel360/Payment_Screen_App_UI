import 'package:flutter/material.dart';
import 'package:payment_card_ui/widgets/nm_box.dart';

class NMButton extends StatelessWidget {
  final bool down;
  final IconData icon;
  final Color color;
  const NMButton({
    this.down,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: down ? nmBoxInvert : nmBox,
      child: Icon(
        icon,
        color: down ? grayshade700 : color,
      ),
    );
  }
}
