import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:connectivity/connectivity.dart';
import 'package:toast/toast.dart';
import '../../local/model/food.dart';
import '../../local/helper/db_helper.dart';
import 'dart:async';
import '../../bloc/article_bloc.dart';

class FoodScreen extends StatefulWidget {
  @override
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen>{

  Future<List<Food>> foods;

  String name;
  String image;
  String sugure;

  final formKey = new GlobalKey<FormState>();
  var dbHelper;
  bool isUpdating;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    dbHelper = DBHelper();
    isUpdating = false;

    check().then((intenet) {
      if (intenet != null && intenet) {
        // Internet Present Case
        refreshOnlineList();
      }
      // No-Internet Case
      refreshOfflineList();
    });
  }

  refreshOfflineList() {
    setState(() {
      foods = DBHelper().getFood();
    });

  }

  SingleChildScrollView dataTable(List<Food> foods) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Card(
        elevation: 100.0,
        child: DataTable(
          dataRowHeight: 200.0,
          sortAscending: true,
          columns: [
            DataColumn(
              label: Text('IMAGE',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "OpenSans-Bold",
                ),
              ),
            ),
            DataColumn(
              label: Text('NAME',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "OpenSans-Bold",
                ),
              ),
            ),
            DataColumn(
              label: Text('SUGURE',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "OpenSans-Bold",
                ),
              ),
            ),
          ],
          rows: foods
              .map((food) => DataRow(cells: [
            DataCell(
                Image.network(food.image, width: 80.0, height: 90.0,)
            ),
            DataCell(
              Text(food.name,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "OpenSans",
                    fontSize: 18
                ),
              ),
            ),
            DataCell(
              Text(food.sugar,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "OpenSans",
                    fontSize: 18.0
                ),
              ),
              onTap: () {
              },
            ),
          ]),
          )
              .toList(),
        ),
      ),
    );
  }

  list() {
    return Expanded(
      child: FutureBuilder(
        future: foods,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return dataTable(snapshot.data);
          }
          if (null == snapshot.data || snapshot.data.length == 0) {
            return Text("No Data Found");
          }
          return new CircularProgressIndicator();
        },
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Total Sugars 100g',
          style: TextStyle(
            color: Colors.white,
            fontFamily: "OpenSans-Bold",

          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFAC0808),
//          actions: <Widget>[
//            new IconButton(
//              icon: new Icon(Icons.close, color: Colors.white,),
//              onPressed: () => Navigator.of(context).pop(null),
//            ),
//          ],
        leading: new Container(),
      ),
      body: new Padding(
        padding: EdgeInsets.only(left: 2.0, right: 2.0, top: 4.0, bottom: 4.0),
        child: new Column(
          children: <Widget>[
            list(),
          ],
        ),
      ),
    );
  }

  Future<bool> check() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      Toast.show("You're connected over mobile data", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      Toast.show("You're connected over Wi-Fi data", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return true;
    }else{
      Toast.show("No internet", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
      return false;
    }

  }

  void refreshOnlineList() {}}



