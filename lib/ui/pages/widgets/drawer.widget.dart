import 'package:flutter/material.dart';
import 'package:flutter_app/config/global.params.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.white,
                        Colors.deepOrange
                      ]
                  )
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    CircleAvatar(
                      backgroundImage: AssetImage("images/t.png"),
                      radius: 60,
                    ),
                    Text('Dietrich',style: Theme.of(context).textTheme.headline4,)
                  ]
                ),
              )),

          ...(GlobalParams.menus as List).map((item){
              return  ListTile(
                title: Text('${item['title']}',style: TextStyle(fontSize: 22),),
                leading: item['icon'],
                trailing: Icon(Icons.arrow_right,color: Colors.orange,),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "${item['route']}");
                },
              );
            }),
          Divider(height: 4,color:Colors.deepOrange),
        ],
      ),
    );
  }
}