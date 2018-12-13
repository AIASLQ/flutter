// 引入依赖保
import "package:flutter/material.dart";
import 'components/listview.dart';
import 'components/hello.dart';
import 'components/drawer.dart';
void main ()=> runApp(App());
// 需要修改的使用 StatefulWidget
// 不需要进行修改的 使用 StatelessWidget
class App extends StatelessWidget{ 
   @override
     Widget build(BuildContext context) {
       // TODO: implement build
       return MaterialApp(
         debugShowCheckedModeBanner: false,//关闭右上角标志
         home: Home(),//主体列表视图
         theme:ThemeData(
           primarySwatch: Colors.purple,
           highlightColor: Color.fromRGBO(255, 255, 255, 0.5)
         ),
       );
     }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar:AppBar( 
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigration',
            //   onPressed: () => debugPrint('ddsdsv'),
            // ),
            title: Text('SUNLIQUAN'),   
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'Navigration',
                onPressed: () => debugPrint('search'),
              ),
            ],
            elevation: 0.0,
          
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.white,
              
              indicatorSize: TabBarIndicatorSize.label,
              // indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist,size: 128.8,color: Colors.black12),
              Icon(Icons.change_history,size: 128.8,color: Colors.black12),
              Icon(Icons.directions_bike,size: 128.8,color: Colors.black12)
            ],
          ),
          // ListViewDemo(),
          // drawer: Container(
          //   color: Colors.white,
          //   padding: EdgeInsets.all(8.0),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Text('scdscdkvnjdfbvjdfbvh')
          //     ],
          //   ), 
          // )
          drawer: drawer()
        ), 
      );
    } 
}

