import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWithSwitch extends StatefulWidget {
  final String mainTitle, subTitle;
  final void Function()? onTap;
  final bool isOn;
  final void Function(bool)? onChanged;

  const TextWithSwitch({
    Key? key,
    required this.mainTitle,
    required this.subTitle,
    this.onTap,
    this.isOn = false,
    this.onChanged,
  }) : super(key: key);

  @override
  State<TextWithSwitch> createState() => _TextWithSwitchState();
}

class _TextWithSwitchState extends State<TextWithSwitch> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Ink(
        height: 80,
        child: InkWell(
          onTap: widget.onTap,
          child: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.mainTitle,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.subTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              CupertinoSwitch(
                value: widget.isOn,
                onChanged: widget.onChanged,
                // trackColor: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
