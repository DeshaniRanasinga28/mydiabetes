class Hospital{
  String name;
  String image;
  String address;
  String phone;
  String email;
  String date;
  String time;
  String roomNo;
  String doctorId;

  Hospital({
    this.name,
    this.image,
    this.address,
    this.phone,
    this.email,
    this.date,
    this.time,
    this.roomNo,
    this.doctorId,
  });

  Hospital.fromJson(Map<String, dynamic> json){
    name = json['name'];
    image = json['image'];
    address = json['address'];
    phone = json['phone'];
    email = json['email'];
    date = json['date'];
    time = json['time'];
    roomNo = json['roomNo'];
    doctorId = json['doctorId'];
  }
}


class HospitalResponse{
  List<Hospital> hospitals;
  HospitalResponse({this.hospitals});
  HospitalResponse.fromJson(dynamic json){
    hospitals = new List<Hospital>();
    json.forEach((v){
      hospitals.add(new Hospital.fromJson(v));
    });
  }
}