import 'package:flutter/material.dart';
import 'package:workout_fitness/common_widget/setting_slider_row.dart';

import 'package:workout_fitness/common_widget/setting_switch_row.dart';


import '../../common/color_extension.dart';

class RunningSettingView extends StatefulWidget {
  const RunningSettingView({super.key});

  @override
  State<RunningSettingView> createState() => _RunningSettingViewState();
}

class _RunningSettingViewState extends State<RunningSettingView> {
  List settingArr = [
    {"name": "GPS", "type": "switch", "value": "false"},
    {"name": "Auto Push", "type": "switch", "value": "false"},
    {"name": "Pause run for calls", "type": "switch", "value": "false"},
    {"name": "Audio Feedack", "type": "slider", "value": "50"},
    {"name": "Time", "type": "slider", "value": "50"},
    {"name": "Distance", "type": "slider", "value": "50"},


    {"name": "Voice Volume", "type": "switch", "value": "false"},
    {"name": "Time", "type": "switch", "value": "false"},
    {"name": "Distance", "type": "switch", "value": "false"},
    {"name": "Pace", "type": "switch", "value": "false"},
    {"name": "Speed", "type": "switch", "value": "false"},
    {"name": "Calories", "type": "switch", "value": "false"},
    
  ];
  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.primary,
        centerTitle: true,
        elevation: 0.1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/img/black_white.png",
              width: 25,
              height: 25,
            )),
        title: Text(
          "Setting",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          itemBuilder: (context, index) {
            var t0bj = settingArr[index] as Map? ?? {};

            if (t0bj["type"] == "switch") {
              return SettingSwitchRow(
                  t0bj: t0bj,
                  onChanged: (newVal) {
                    settingArr[index]["value"] = newVal ? "true" : "false";
                    setState(() {});
                  });
            } else if (t0bj["type"] == "slider") {
                return SettingSliderRow(
                  t0bj: t0bj,
                  onChanged:(newVal){
                    settingArr[index]["value"] = newVal.toString();
                    setState(() {
                      
                    });
                  }
                );
            } else {
              return Container();
            }
            
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.black26,
              height: 1,
            );
          },
          itemCount: settingArr.length),
      
    );
  }
}
