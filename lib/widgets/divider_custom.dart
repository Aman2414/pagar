import 'package:flutter/material.dart';

class CustomDivider extends StatefulWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  State<CustomDivider> createState() => _CustomDividerState();
}

class _CustomDividerState extends State<CustomDivider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Divider(
        height: 1,
      ),
    );
  }
}
