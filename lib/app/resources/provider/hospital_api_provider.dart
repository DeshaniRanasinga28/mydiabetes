import 'dart:async';
import 'dart:convert';
import '../../models/hospital_response.dart';
import 'package:http/http.dart' show Client;

class HospitalApiProvider{
  Client client = Client();

  Future<HospitalResponse> featchHospitalList() async{
    final response = await client.get("https://mydiabetesbck.iconicto.com/hospitals/");
    if(response.statusCode == 200){
      return HospitalResponse.fromJson(json.decode(response.body));
    }else{
      throw Exception('Failed to load post');
    }
  }
}