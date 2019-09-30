import 'dart:async';
import 'dart:convert';
import '../../models/doctor_response.dart';
import 'package:http/http.dart' show Client;

class DoctorApiProvider{
  Client client = Client();

  Future<DoctorResponse> fetchDoctorList() async{
    final response = await client.get("https://mydiabetesbck.iconicto.com/doctors/");
    if(response.statusCode == 200){
      return DoctorResponse.fromJson(json.decode(response.body));
    }else{
      throw Exception('Failed to load post');
    }
  }
}