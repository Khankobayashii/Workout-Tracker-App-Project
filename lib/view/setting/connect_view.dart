import 'package:flutter/material.dart';
import 'package:workout_fitness/common_widget/connect_row.dart';


import '../../common/color_extension.dart';

class ConnectView extends StatefulWidget {
  final Function(Map) didSelect;
  const ConnectView({super.key,required this.didSelect});

  @override
  State<ConnectView> createState() => _ConnectViewState();
}

class _ConnectViewState extends State<ConnectView> {
  int selectIndex  = 0;
  List connectArr = [
    {"name": "Connect to Facebook","icon":"assets/img/fb.png","color":const Color.fromARGB(255, 10, 82, 216)},

    {"name": "Connect to X","icon":"assets/img/X.png","color":const Color.fromARGB(224, 0, 0, 9)},

    {"name": "Connect to Linkedin","icon":"assets/img/Lind.png","color":const Color.fromARGB(225, 27, 104, 205)},

    {"name": "Connect to Instagram","icon":"assets/img/instagram.png","color":const Color.fromARGB(124, 255, 0, 157)},

    
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
          "Connected",
          style: TextStyle(
              color: TColor.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
            "Choose to Connect social network",
            style: TextStyle(
                color: TColor.secondaryText, fontSize: 20,fontWeight: FontWeight.w700),
                    ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                itemBuilder: (context, index) {
                  var t0bj = connectArr[index] as Map? ?? {};
            
                    return ConnectRow(
                      t0bj: t0bj,
                      isActive: selectIndex == index, onPressed: (){
                        setState(() {
                          selectIndex = index;
                        });
                      },
                    );
                  
                },
                
                itemCount: connectArr.length),
          ),
        ],
      ),
      
    );
  }
}
