import "package:flutter/material.dart";
import "package:newws/apiFile.dart";
import "package:newws/welcome.dart";
import "package:provider/provider.dart";
main(){
  runApp(ChangeNotifierProvider(
      create: (context){
        return apiFunctions();
      },
      child: first(),
  ));
}

class first extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "News Application",
      home: welcome(),
    );
  }

}