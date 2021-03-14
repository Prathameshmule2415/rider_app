import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestAssistant
{
  static Future<String> getRequest(String url) async {
    http.Response response = await http.get(url);
    try{
      if(response.statusCode == 200){
        String JsonData = response.body;
        var decodeData = jsonDecode(JsonData);
        return decodeData;
      }
      else{
          return "Failed, No Response";
      }
    }
    catch(exp){
        return "Failed.";
    }

  }
}