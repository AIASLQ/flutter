import "package:flutter/material.dart";
class drawer extends StatelessWidget{
  @override
    Widget build(BuildContext context) { 
      return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                // DrawerHeader(
                //   child: Text('header'.toUpperCase()),
                //   decoration:BoxDecoration(
                //     color: Colors.grey[100],
                //   ),
                // ),
                UserAccountsDrawerHeader(
                  accountName: Text('孙立全',style: TextStyle(fontWeight: FontWeight.bold),),
                  accountEmail: Text('2577135753@qq.com'),
                  currentAccountPicture:CircleAvatar(
                    backgroundImage: NetworkImage('https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3380882329,436774057&fm=173&app=49&f=JPEG?w=375&h=243&s=4008F6166973D786927DE9F003004023'),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                      image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg')
                      ,fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.purple[100].withOpacity(0.5), 
                        BlendMode.hardLight
                        )
                    )
                  ),
                ),
                ListTile(
                  title: Text('Message',textAlign:TextAlign.right),
                  trailing: Icon(Icons.message,color:Colors.black12,size:22.0),
                  onTap: ()=> Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Favorite',textAlign:TextAlign.right),
                  trailing: Icon(Icons.favorite,color:Colors.black12,size:22.0),
                  onTap: ()=>Navigator.pop(context),
                ),
                ListTile(
                  title: Text('Settings',textAlign:TextAlign.right),
                  trailing: Icon(Icons.settings,color:Colors.black12,size:22.0),
                  onTap: ()=>Navigator.pop(context),
                )
              ],
            ),
          );
    }
}





