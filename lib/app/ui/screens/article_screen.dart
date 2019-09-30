import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../models/article_response.dart';
import '../../bloc/article_bloc.dart';
import 'package:toast/toast.dart';
import 'web_screen.dart';


class ArticleScreen extends StatefulWidget {
  @override
  _ArticleScreenState createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen>{

  double deviceWidth, deviceHeight;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc.fetchArticles();
  }

//  @override
//  void dispose() {
//    // TODO: implement dispose
//    bloc.dispose();
//    super.dispose();
//
//  }


  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Read Article',
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
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: StreamBuilder(
            stream: bloc.allArticles,
            builder: (context, AsyncSnapshot<ArticleResponse> snapshot){
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

  Widget buildList(AsyncSnapshot<ArticleResponse> snapshot){
   return ListView.builder(
     itemCount: snapshot.data.articles.length,
//       gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (BuildContext, int index){
         return getStructuredGridCell(snapshot.data.articles[index]);
   });
  }

 Card getStructuredGridCell(Article article) {
   return Card(
       elevation: 10.0,
       child: FlatButton(
         onPressed: (){
           var route = new MaterialPageRoute(
               builder: (BuildContext context) => new WebScreen(url : article.link),
           );
           Navigator.of(context).push(route);
         },
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           verticalDirection: VerticalDirection.down,
           children: <Widget>[
             Padding(
               padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 10.0),
               child: Image.network(article.image),
             ),
             Padding(
               padding: EdgeInsets.only(top: 5.0, bottom: 15.0),
               child: Text(article.title.toString(), style: TextStyle(
                 color: Colors.black,
                 fontSize: 18.0,
                 fontFamily: "OpenSans-Bold",

               ),),
             ),
           ],
         )),
       );
 }

}
