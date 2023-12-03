import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class apiFunctions extends ChangeNotifier{
  Map Data = {};
  bool loading=false;
  getNews(String link) async{
    loading = true;
    http.Response response = await http.get(Uri.parse(link));
    if(response.statusCode == 200){
      Data = json.decode(response.body);
    }
    loading = false;
    notifyListeners();
  }
}