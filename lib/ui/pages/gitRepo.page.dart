import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GitRepositoriesPage extends StatefulWidget {
   String login="";
   String avatar;
  GitRepositoriesPage({required this.login,required this.avatar});

  @override
  State<GitRepositoriesPage> createState() => _GitRepositoriesPageState();
}

class _GitRepositoriesPageState extends State<GitRepositoriesPage> {
  dynamic dataRep;
  @override
  void initState() {
    // TODO: implement initState
      super.initState();
      loadRepositories();
  }
  void loadRepositories() async {
    String url="https://api.github.com/users/${widget.login}/repos";
    print(url);
    http.Response response= await http.get(Uri.parse(url));
    if(response.statusCode==200){
      dataRep = json.decode(response.body);
      print(dataRep);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Repositories ${widget.login}"),
      actions: [CircleAvatar(backgroundImage: NetworkImage(widget.avatar),)],
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (context, index) => ListTile(
              title: Text("${dataRep[index]['name']}"),
            ),
            separatorBuilder: (context,index)=> Divider(height: 2,color: Colors.deepOrange,),
            itemCount: dataRep==null?0:dataRep.length
        ),

        )
      );
  }
}