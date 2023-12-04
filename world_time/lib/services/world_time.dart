import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location;
  String time = "0";
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Uri uri = Uri.https('worldtimeapi.org', '/api/timezone/$url');
      http.Response response = await http.get(uri);
      Map data = jsonDecode(response.body);
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    } catch (e) {
      time = "could not get time data ";
    }
  }
}
