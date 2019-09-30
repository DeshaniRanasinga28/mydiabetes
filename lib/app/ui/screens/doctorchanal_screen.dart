import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/custom_flat_button.dart';
import 'doctorchaneldetails_screen.dart';


class DoctorChanalScreen extends StatefulWidget{
  final String image;
  final String name;
  final String address;
  final String email;
  final String phone;
  final String roomNo;
  final String day;
  final String time;
  final String dname;

  DoctorChanalScreen({Key key, this.image, this.name, this.address, this.email, this.phone, this.roomNo, this.day, this.time, this.dname}) : super (key: key);

  @override
  _DoctorChanalScreenState createState() => _DoctorChanalScreenState();
}

class _DoctorChanalScreenState extends State<DoctorChanalScreen>{

  String appoinmentday = "";
  var days = ['Monday', 'Tuesday', 'Wendnesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  var currentDate = 'Monday';
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
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
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
                                child: Text('${widget.address}',
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
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text("Doctor Name  :",  style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: "OpenSans",
                          ),
                          ),
                        ),
                      ),
                      Container(
                          child:Padding(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: Text('${widget.dname}',  style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontFamily: "OpenSans",
                            ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text("Patient Name  :",  style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: "OpenSans",
                          ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text('Miss Deshani Ranasingha',  style: TextStyle(
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
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 125,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text("Room NO  :",  style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: "OpenSans",
                          ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text('${widget.roomNo}',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: "OpenSans",
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 125.0,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text("Time  :",  style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: "OpenSans",
                          ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text('${widget.time}',  style: TextStyle(
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
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 125.0,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Text("Day  :",  style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontFamily: "OpenSans",
                          ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: DropdownButton<String>(
                            items: days.map((String dropDownStringItem){
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem, style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.0,
                                  fontFamily: "OpenSans",
                                ),),
                              );
                            }).toList(),
                            onChanged: (String newValueSelected){
                              setState(() {
                                this.currentDate = newValueSelected;
                              });
                            },
                            value: currentDate,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 500.0,
                  child:Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0, left: 40.0, right: 40.0),
                    child: CustomFlatButton(
                      title: "Submit",
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      textColor: Colors.white,
                      onPressed: (){
                        var route = new MaterialPageRoute(
                            builder: (BuildContext context) => new DoctorChanelDetailsScreen(image: '${widget.image}', name: '${widget.name}', address:'${widget.address}', email: '${widget.email}', phone: '${widget.phone}', roomNo: '${widget.roomNo}', day: this.currentDate, time: '${widget.time}', dname: '${widget.day}', )
                        );
                        Navigator.of(context).push(route);
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
        ),
      ),
    );
  }



}