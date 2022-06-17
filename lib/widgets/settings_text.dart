import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final String mainTitle, subTitle;
  final void Function()? onTap;
  final bool isNewFeature;

  const CustomText({
    Key? key,
    required this.mainTitle,
    required this.subTitle,
    this.onTap,
    this.isNewFeature = false,
  }) : super(key: key);

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
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
                    Row(
                      children: [
                        Text(widget.mainTitle,style: TextStyle(
                          color: Colors.grey,
                        ),),
                        SizedBox(
                          width: 10,
                        ),
                        widget.isNewFeature
                            ? Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.red,
                                ),
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  "NEW FEATURE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.subTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 20,
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
