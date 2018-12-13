// 引入依赖保
import "package:flutter/material.dart";
import 'model/post.dart';
void main ()=> runApp(App());
// 需要修改的使用 StatefulWidget
// 不需要进行修改的 使用 StatelessWidget
class App extends StatelessWidget{ 
   @override
     Widget build(BuildContext context) {
       // TODO: implement build
       return MaterialApp(
         home: Home(),//主体列表视图
         theme:ThemeData(
           primarySwatch: Colors.yellow
         ),
       );
     }
}


class Home extends StatelessWidget {

  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
      color: Colors.white,
      margin:EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height:16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title
          ),
           Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead
          ),
          SizedBox(height: 16.0), 
        ],
      ), 
    ); 
  }
  @override
  Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar:AppBar( 
          title: Text('SUNLIQUAN'),          
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: posts.length,
          itemBuilder:_listItemBuilder,
        )
      );
    } 
}

class Hello extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Center(
          child: Text(
            'hellow', 
            textDirection: TextDirection.ltr, 
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue
            ),
          ),
      );
    }
}