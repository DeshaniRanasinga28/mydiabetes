import '../resources/doctor_repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/doctor_response.dart';

class DoctorBloc {
  final _repository = Repository();

  final _doctorsFetcher = PublishSubject<DoctorResponse>();

  Observable<DoctorResponse> get allDoctors => _doctorsFetcher.stream;

  fetchCountries() async {
    DoctorResponse itemModel = await _repository.fetchDoctors();
    _doctorsFetcher.sink.add(itemModel);
  }

  dispose() {
    _doctorsFetcher.close();
  }
}

final bloc = DoctorBloc();