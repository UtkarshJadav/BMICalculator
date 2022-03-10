import 'package:flutter/cupertino.dart';

class ReusableCard extends StatefulWidget {
  final Color color;
  final Widget? cardChild;

  const ReusableCard({Key? key, required this.color, this.cardChild})
      : super(key: key);

  @override
  State<ReusableCard> createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: widget.cardChild,
        margin: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
