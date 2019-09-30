import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../validator.dart';
import 'package:mydiabetes/app/models/doctor_response.dart';
import '../../bloc/doctor_bloc.dart';
import 'hospitaldetails_screen.dart';

class ConsulterScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<ConsulterScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc.fetchCountries();
  }

//  @override
//  void dispose() {
//    // TODO: implement dispose
//    bloc.dispose();
//    super.dispose();
//  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
//        appBar: new AppBar(
//          title: Text('Edit Details',
//            style: TextStyle(
//              color: Colors.white,
//              fontFamily: "OpenSans-Bold",
//            ),
//          ),
//          centerTitle: true,
//          backgroundColor: Color(0xFFAC0808),
//          actions: <Widget>[
//            new IconButton(
//              icon: new Icon(Icons.close, color: Colors.white,),
//              onPressed: () => Navigator.of(context).pop(null),
//            ),
//          ],
////          leading: new Container(),
//        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: StreamBuilder(
              stream: bloc.allDoctors,
              builder: (context, AsyncSnapshot<DoctorResponse> snapshot){
                if(snapshot.hasData){
                  return buildList(snapshot);
                }else if (snapshot.hasError){
                  return Text("${snapshot.error}");
                }
                return Container(
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.white,
                  ),

                );
                return Center(child: CircularProgressIndicator());
              }
          ),
        ),
      ),
    );
  }

  Widget buildList(AsyncSnapshot<DoctorResponse> snapshot){
    return Container(
      alignment: Alignment.centerLeft,
      child: ListView.builder(
          itemCount: snapshot.data.doctors.length,
//       gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext, int index){
            return getStructuredGridCell(snapshot.data.doctors[index]);
          }),
    );
  }

  Card getStructuredGridCell(Doctor doctor){
    return Card(
      elevation: 10.0,
      child: FlatButton(
        onPressed: (){
          var route = new MaterialPageRoute(
              builder: (BuildContext context) => new HospitalDetailsScreen(image: doctor.image, name : doctor.name, details : doctor.details, email : doctor.email, phone: doctor.phone, )
          );
          Navigator.of(context).push(route);
        },
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: Image.network(doctor.image, width: 100.0, height: 100.0,),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child:Column(
                children: <Widget>[
                  Text(doctor.name.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: "OpenSans-Bold",
                    ),
                  ),
                  Text(doctor.details.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.0,
                      fontFamily: "OpenSans",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child:Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Image.asset("images/eamil.png", width: 10.0, height: 10.0,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Text(doctor.email.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontFamily: "OpenSans",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5.0),
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 5.0),
                          child: Image.asset("images/telephone.png", width: 10.0, height: 10.0,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.0),
                          child: Text(doctor.phone.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontFamily: "OpenSans",
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }




}