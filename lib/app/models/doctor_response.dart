class Doctor{
  String name;
  String details;
  String email;
  String phone;
  String image;

  Doctor({
    this.name,
    this.details,
    this.email,
    this.phone,
    this.image,
  });

  Doctor.fromJson(Map<String, dynamic> json){
    name = json['name'];
    details = json['details'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
  }

}


class DoctorResponse{
  List<Doctor> doctors;
  DoctorResponse({this.doctors});
  DoctorResponse.fromJson(dynamic json){
    doctors = new List<Doctor>();
    json.forEach((v) {
      doctors.add(new Doctor.fromJson(v));
    });
  }
}