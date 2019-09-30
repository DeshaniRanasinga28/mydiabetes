import 'dart:async';
import '../models/doctor_response.dart';
import 'provider/doctor_api_provider.dart';

class Repository{
  final doctorApiProvider = DoctorApiProvider();

  Future<DoctorResponse> fetchDoctors() => doctorApiProvider.fetchDoctorList();
}