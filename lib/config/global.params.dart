
import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String,dynamic>> menus=[
    {"title":"Users", "icon":Icon(Icons.account_box_outlined),"route":"/users"},
    {"title":"Meteo", "icon":Icon(Icons.camera),"route":"/meteo"},
    {"title":"Gallery", "icon":Icon(Icons.map),"route":"/gallery"},
  ];
}