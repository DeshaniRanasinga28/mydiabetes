import '../models/hospital_response.dart';
import '../resources/hospital_repository.dart';
import 'package:rxdart/rxdart.dart';

class HospitalBloc{
  final _repository = HospitalRepository();

  final _hospitalsFetcher = PublishSubject<HospitalResponse>();

  Observable<HospitalResponse> get allHospitals => _hospitalsFetcher.stream;

  fetchHospitals() async{
    HospitalResponse itemModel = await _repository.fetchHospitals();
    _hospitalsFetcher.sink.add(itemModel);
  }

  dispose(){
    _hospitalsFetcher.close();
  }
}

final bloc = HospitalBloc();