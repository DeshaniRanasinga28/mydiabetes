import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mydiabetes/app/ui/widgets/custom_flat_button.dart';
import 'package:toast/toast.dart';
import 'doctor_screen.dart';

class DoctorChanelDetailsScreen extends StatefulWidget {
  final String image;
  final String name;
  final String address;
  final String email;
  final String phone;
  final String roomNo;
  final String day;
  final String time;
  final String dname;

  DoctorChanelDetailsScreen(
      {Key key,
      this.image,
      this.name,
      this.address,
      this.email,
      this.phone,
      this.roomNo,
      this.day,
      this.time,
      this.dname})
      : super(key: key);

//   this.phone, this.roomNo, this.day, this.time, this.dname}) : super (key: key);

  @override
  _DoctorChanelDetailsScreenState createState() =>
      _DoctorChanelDetailsScreenState();
}

class _DoctorChanelDetailsScreenState extends State<DoctorChanelDetailsScreen> {
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
              icon: new Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () => Navigator.of(context).pop(null),
            ),
          ],
          leading: new Container(),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: ListView(

    children: <Widget>[
            Container(
            color: Colors.white,
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 10.0, top: 10.0),
                          child: Image.network(
                            '${widget.image}',
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                        Container(
                          child: Column(
                            children: <Widget>[
                              Text(
                                '${widget.name}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontFamily: "OpenSans-Bold",
                                ),
                              ),
                              Text(
                                '${widget.address}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.0,
                                  fontFamily: "OpenSans",
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 5.0),
                                      child: Image.asset(
                                        "images/eamil.png",
                                        width: 10.0,
                                        height: 10.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.0),
                                      child: Text(
                                        '${widget.email}',
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
                                      child: Image.asset(
                                        "images/telephone.png",
                                        width: 10.0,
                                        height: 10.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.0),
                                      child: Text(
                                        '${widget.phone}',
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
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Doctor Name  :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '${widget.name}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Room NO :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '${widget.roomNo}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Time  :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '${widget.time}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Day  :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '${widget.day}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20, left: 10),
                      child: Text(
                        "Payment Details",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: "OpenSans-Bold",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Chanale Charge  :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '1000.00 SLR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Doctor Charge  :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '1200.00 SLR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Tax :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '200.00 SLR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'Service Charge  :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '100.00 SLR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontFamily: "OpenSans",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 20.0, top: 10.0),
                                  child: Text(
                                    'TOTAL AMOUNT  :',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontFamily: "OpenSans-Bold",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding:
                                  EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: Text(
                                    '2500.00 SLR',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontFamily: "OpenSans-Bold",
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 500.0,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 40.0, right: 40.0),
                            child: CustomFlatButton(
                              title: "OK",
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              textColor: Colors.white,
                              onPressed: () {
                                Toast.show("Chanaling Success", context,
                                    duration: Toast.LENGTH_SHORT,
                                    gravity: Toast.BOTTOM);
//                    Navigator.of(context).pushNamed("/chanaling");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DoctorScreen()));
                              },
                              splashColor: Colors.black12,
                              borderColor: Colors.black,
                              borderWidth: 0,
                              color: Color(0xFF5FB794),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    ],

    ),
      ),
    ));
  }
}
