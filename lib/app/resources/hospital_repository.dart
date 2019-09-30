import 'dart:async';
import '../models/hospital_response.dart';
import 'provider/hospital_api_provider.dart';

class HospitalRepository{
  final hospitalApiProvider = HospitalApiProvider();

  Future<HospitalResponse> fetchHospitals() => hospitalApiProvider.featchHospitalList();
}