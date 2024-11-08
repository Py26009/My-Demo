import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> mData = [
    {
      "color": Color(0xFFF8BBD0),
      "name": "Sara",
      "message": " when will you reach office?",
      "time": "12:03",
      "count": "2",
      "img":
          "https://th.bing.com/th/id/OIP.Okypyut7QGhZRz0YjRN3pAHaEK?rs=1&pid=ImgDetMain"
    },
    {
      "color": Color(0xFFF48FB1),
      "name": "Alia",
      "message": " Are you there ?",
      "time": "11:03",
      "count": "1",
      "img":
          "https://1.bp.blogspot.com/-i_YfHM0HSj8/XcRCurHzs_I/AAAAAAAABBo/iXNu40jPU4glUV2OMFAttXRwK0HRASdywCNcBGAsYHQ/s1600/alia-bhatt-cute-dp.jpg"
    },
    {
      "color": Color(0xFFF06292),
      "name": "Jenny",
      "message": " Hii ",
      "time": "10:01",
      "count": "1",
      "img":
          "https://www.namesbiography.com/wp-content/uploads/2020/06/jenni-2.jpg"
    },
    {
      "color": Color(0xFFF8BBD0),
      "name": "Jill",
      "message": " Assignment completed? ",
      "time": "8:24",
      "count": "3",
      "img":
          "https://th.bing.com/th/id/OIP.Okypyut7QGhZRz0YjRN3pAHaEK?rs=1&pid=ImgDetMain"
    },
    {
      "color": Color(0xFFF48FB1),
      "name": "John",
      "message": " byee ",
      "time": "8:12",
      "count": "1",
      "img":
          "https://th.bing.com/th/id/OIP.Okypyut7QGhZRz0YjRN3pAHaEK?rs=1&pid=ImgDetMain"
    },
    {
      "color": Color(0xFFF06292),
      "name": "Joey",
      "message": " How you doin? ",
      "time": "8:12",
      "count": "1",
      "img":
          "https://th.bing.com/th/id/OIP.Okypyut7QGhZRz0YjRN3pAHaEK?rs=1&pid=ImgDetMain"
    },
    {
      "color": Color(0xFFF8BBD0),
      "name": "Rachel",
      "message": " will meet you tomorrow!!! ",
      "time": "07:30",
      "count": "1",
      "img":
          "https://th.bing.com/th/id/OIP.Okypyut7QGhZRz0YjRN3pAHaEK?rs=1&pid=ImgDetMain"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp',style: TextStyle(color: Colors.green, fontSize: 24),),
        ),
    body: SingleChildScrollView(
      child: Column(
        children: mData.map((element){
          return Container(
          padding: EdgeInsets.all(11),
          margin: EdgeInsets.all(11),
         width: double.infinity,
      child: Column(
    children: [
      Row(
    children: [
      Container(
    width: 80,
    height: 80,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(image: NetworkImage(element['img']),
    fit: BoxFit.cover
    ),
    ),
    ),
      SizedBox(width: 11,),
      Expanded(
        flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(element['name'], style: TextStyle(fontSize: 24),),
              Text(element['message'], style: TextStyle(fontSize: 16),),
              SizedBox(height: 11,),
            ],
          ),
      ),
      Expanded(
        flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(element['time'], style: TextStyle(fontSize: 12),),
              SizedBox(
                height: 11,
              ),
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child: Center(child: Text(element['count']),),
              )
            ],

      ))
    ],
    )
    ],
    ),

          );
    }).toList(),
    ),


    // body: ListView.builder(itemBuilder: (context,index){
    //   return Container(
    //     height: 100,
    //     width: double.infinity,
    //     color: mData[index]["color"],
    //     child: ListTile(
    //       title: Text(mData[index]["name"]),
    //       subtitle: Text(mData[index]["message"]),
    //       trailing: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //         Text(mData[index]["time"]),
    //         Text(mData[index]["count"])
    //       ],),
    //     ),
    //   );
    // },itemCount: mData.length,)
    )
    ); //   );
  }
}

