import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:MyDrawer(),
      appBar: AppBar(title: Text("Home Page"),),
      body: const Center(
        child: Text("Home Page",style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 26
        ),),
      ),
    );
  }
}



