import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BatteryInfo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BatteryInfoState();

}

class BatteryInfoState extends State<BatteryInfo> {

  static const platform = const MethodChannel('samples.flutter.io/battery');
  String _batteryLevel = 'Unknown battery level.';

  @override
  Widget build(BuildContext context) {
    _getBatteryLevel();
    return Text(_batteryLevel);
  }
  
  Future<Null> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
}