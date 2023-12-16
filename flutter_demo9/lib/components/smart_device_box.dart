import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  const SmartDeviceBox(
      {super.key,
      required this.iconPath,
      required this.powerOn,
      required this.smartDeviceName,
      required this.onChanged});

  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 25),
        decoration: BoxDecoration(
            color: Colors.grey[400], borderRadius: BorderRadius.circular(24)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //   icon
            Image.asset(
              iconPath,
              height: 60,
            ),

            //   smart devices name + switch
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    smartDeviceName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )),
                Transform.rotate(
                    angle: pi / 2,
                    child: Switch(value: powerOn, onChanged: onChanged))
              ],
            )
          ],
        ),
      ),
    );
  }
}
