import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pagar/widgets/divider_custom.dart';
import 'package:pagar/widgets/settings_text.dart';
import 'package:pagar/widgets/settings_text_with_switch.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Settings",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
              color: Colors.white,
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 239, 246, 255),
                            ),
                            padding: EdgeInsets.all(8),
                            child: Icon(
                              CupertinoIcons.briefcase_fill,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Business Settings",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomDivider(),
                    CustomText(
                        mainTitle: "Business Name",
                        subTitle: "aman",
                        onTap: () {}),
                    CustomDivider(),
                    CustomText(
                      mainTitle: "Month Calculation",
                      subTitle: "Calendar Month",
                      onTap: () {},
                    ),
                    CustomDivider(),
                    CustomText(
                      mainTitle: "Daily Work Entry",
                      subTitle: "No Staff Have Access",
                      onTap: () {},
                    ),
                    CustomDivider(),
                    CustomText(
                      isNewFeature: true,
                      mainTitle: "Shift Settings",
                      subTitle: "No Shift Added",
                      onTap: () {},
                    ),
                    CustomDivider(),
                    TextWithSwitch(
                      isOn: isOn,
                      mainTitle: "Attendance Setting",
                      subTitle: "Auto-Attendance Rule",
                      onTap: () {
                        setState(() {
                          isOn = !isOn;
                        });
                      },
                      onChanged: (val) {
                        setState(() {
                          isOn = val;
                        });
                      },
                    ),
                    CustomDivider(),
                    CustomText(
                      isNewFeature: true,
                      mainTitle: "Track In & Out Time",
                      subTitle: "Disabled",
                      onTap: () {},
                    ),
                    CustomDivider(),
                    CustomText(
                      isNewFeature: true,
                      mainTitle: "Staff Weekly Holidays",
                      subTitle: "Not Assigned",
                      onTap: () {},
                    ),
                    CustomDivider(),
                    CustomText(
                      isNewFeature: true,
                      mainTitle: "Departments",
                      subTitle: "Manage Departments",
                      onTap: () {},
                    ),
                    CustomDivider(),
                    CustomText(
                      isNewFeature: true,
                      mainTitle: "Automation Rules",
                      subTitle: "Set Late Entry, Early Exit & Overtime Rules adfsfa",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
