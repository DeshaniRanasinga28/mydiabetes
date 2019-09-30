import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydiabetes/app/models/doctor_response.dart';
import '../../models/hospital_response.dart';
import '../../bloc/hospital_bloc.dart';
import 'doctorchanal_screen.dart';

class HospitalDetailsScreen extends StatefulWidget{
  final String image;
  final String name;
  final String details;
  final String email;
  final String phone;
  HospitalDetailsScreen({Key key, this.image, this.name, this.details, this.email, this.phone}) : super (key: key);

  @override
  _HospitalDetailsScreenState createState() => _HospitalDetailsScreenState();

}

class _HospitalDetailsScreenState extends State<HospitalDetailsScreen>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc.fetchHospitals();
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
        appBar: new AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFFAC0808),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.close, color: Colors.white,),
              onPressed: () => Navigator.of(context).pop(null),
            ),
          ],
          leading: new Container(),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
           child: Container(
             alignment: Alignment.topLeft,
             child:Column(
               children: <Widget>[
                 Container(
                   color: Colors.white,
                   child: Row(
                     children: <Widget>[
                       Container(
                         margin: EdgeInsets.only(left: 10.0),
                         child: Image.network('${widget.image}', width: 100.0, height: 100.0,),
                       ),
                       Container(
                           child:Column(
                             children: <Widget>[
                               Padding(
                                 padding: EdgeInsets.only(left: 5.0),
                                 child: Text('${widget.name}',
                                   style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 16.0,
                                   fontFamily: "OpenSans-Bold",
                                 ),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left: 5.0),
                                 child: Text('${widget.details}',
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 12.0,
                                     fontFamily: "OpenSans",
                                   ),),
                               ),
                               Padding(
                                 padding: EdgeInsets.only(left: 0, top: 10.0),
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(right: 0.0),
                                       child: Image.asset("images/eamil.png", width: 10.0, height: 10.0,),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 8.0),
                                       child: Text('${widget.email}',
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
                               Padding(
                                 padding: EdgeInsets.only(left: 0.0, top: 5.0),
                                 child: Row(
                                   children: <Widget>[
                                     Padding(
                                       padding: EdgeInsets.only(right: 0.0),
                                       child: Image.asset("images/telephone.png", width: 10.0, height: 10.0,),
                                     ),
                                     Padding(
                                       padding: EdgeInsets.only(left: 8.0),
                                       child: Text('${widget.phone}',
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
                             ],
                           )
                       ),
                     ],
                   ),
                 ),
                 Container(
                  height: 338.0,
                  child:StreamBuilder(
                      stream: bloc.allHospitals,
                      builder: (context, AsyncSnapshot<HospitalResponse> snapshot){
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
                      }
                  ),
                )
               ],
             )
           )
        ),
      ),
    );
  }



  Widget buildList(AsyncSnapshot<HospitalResponse> snapshot){
    return Container(
      alignment: Alignment.topLeft,
      child: ListView.builder(
          itemCount: snapshot.data.hospitals.length,
//       gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext, int index){
            return getStructuredGridCell(snapshot.data.hospitals[index]);
          }),
    );
  }

  Card getStructuredGridCell(Hospital hospital){
    return Card(
      elevation: 10.0,
      child: FlatButton(
        onPressed: (){
          var route = new MaterialPageRoute(
              builder: (BuildContext context) => new DoctorChanalScreen(image: hospital.image, name : hospital.name, address : hospital.address, email : hospital.email, phone: hospital.phone, roomNo: hospital.roomNo, day: hospital.roomNo, time: hospital.time, dname: '${widget.name}',)
          );
          Navigator.of(context).push(route);
        },
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
              child: Image.network(hospital.image.toString(), width: 100.0, height: 100.0,),
            ),
            Container(
              margin: EdgeInsets.only(left: 5.0, right: 5.0),
              child:Column(
                children: <Widget>[
                  Text(hospital.name.toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                      fontFamily: "OpenSans-Bold",
                    ),
                  ),
                  Text(hospital.address.toString(),
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
                          padding: EdgeInsets.only(left: 0.0),
                          child: Image.asset("images/eamil.png", width: 10.0, height: 10.0,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(hospital.email.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
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
                          padding: EdgeInsets.only(left: 0.0),
                          child: Image.asset("images/telephone.png", width: 10.0, height: 10.0,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(hospital.phone.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                              fontFamily: "OpenSans",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 0.0),
                                child: Image.asset("images/calendar.png", width: 10.0, height: 10.0,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.0),
                                child: Text(hospital.date.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                    fontFamily: "OpenSans",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Image.asset("images/clock.png", width: 10.0, height: 10.0,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 2.0),
                                child: Text(hospital.time.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10.0,
                                    fontFamily: "OpenSans",
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
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


