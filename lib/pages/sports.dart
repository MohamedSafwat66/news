import 'package:flutter/material.dart';

class SportTab extends StatefulWidget{
  @override
  State<SportTab> createState() => _SportTabState();
}

class _SportTabState extends State<SportTab> {
  late Map data;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemBuilder: (context,i){
        return Stack(
          children: [
            Container(

              child: Image(
                image: NetworkImage(
                    data["articles"][i]["urlToImage"]==null?
                    "https://media.istockphoto.com/id/1194173085/vector/news-11.jpg?s=612x612&w=0&k=20&c=KMYRAgrCfDnr3x0oP1j5czEaXDCTVrx60bIpxxwy9yc="
                        :data["articles"][i]["urlToImage"]
                ),
                fit: BoxFit.fill,
              ),
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50)
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
            Container(
              height: 180,
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    data["articles"][i]["title"].toString(),
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "Nunito",
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 70,),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          data["articles"][i]["author"].toString(),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          data["articles"][i]["publishedAt"].toString().replaceRange(data["articles"][i]["publishedAt"].length-4, data["articles"][i]["publishedAt"].length, ""),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: "Nunito",
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      },
      itemCount: data["articles"].length,
    );
  }
}