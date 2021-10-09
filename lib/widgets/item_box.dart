import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/images/1.jpeg',
        width: double.infinity,
        height: 400,
        fit: BoxFit.none,
        alignment: AlignmentDirectional.bottomEnd,
      ),
    );
  }
}
