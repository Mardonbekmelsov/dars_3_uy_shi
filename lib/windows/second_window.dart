import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  List<Map<String, dynamic>> rows=[
    {"icon": const Icon(CupertinoIcons.circle_fill, color: Color.fromARGB(212, 248, 142, 4),), "weekDay": "Monday", "data": "3 oct", "temp": "32/31°"},
    {"icon": const Icon(CupertinoIcons.cloud_rain_fill, color: Colors.white), "weekDay": "Tuesday", "data": "4 oct", "temp": "22/23°"},
    {"icon": const Icon(CupertinoIcons.circle_fill, color: Color.fromARGB(212, 248, 142, 4),), "weekDay": "Wednesday", "data": "5 oct", "temp": "30/31°"},
    {"icon": const Icon(CupertinoIcons.cloud_fill, color: Colors.white), "weekDay": "Thursday", "data": "6 oct", "temp": "24/26°"},
    {"icon": const Icon(CupertinoIcons.cloud_sun_fill, color: Colors.white,), "weekDay": "Friday", "data": "7 oct", "temp": "26/27°"},
    {"icon": const Icon(CupertinoIcons.cloud_sun_fill, color: Colors.white,), "weekDay": "Saturday", "data": "8 oct", "temp": "27/28°"},
    {"icon": const Icon(CupertinoIcons.cloud_rain_fill, color: Colors.white), "weekDay": "Sunday", "data": "9 oct", "temp": "22/23°"}
    ];
  Widget buildRow(Icon icon, String weekDay, String data, String temp){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          SizedBox(width: 15,),
          icon,
          const SizedBox(width: 40),
          Text("$weekDay,", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,color: Colors.white),),
          Text("$data,", style: const TextStyle(fontSize: 15, color: Colors.white),),
          SizedBox(width: 75),
          Text("${temp.split("/")[0]}/", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
          Text(temp.split("/")[1], style: const TextStyle(fontSize: 20, color: Colors.white),)
        ],
      ),
    );
  }

class SecondWindow extends StatelessWidget {


  
  @override
  Widget build(BuildContext context) {

    
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: h,
        width: w,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 41, 98, 255)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.keyboard_backspace),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 41, 98, 255),
                      foregroundColor: Colors.white),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Text(
                  "Bandung,",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                const Text("Indonesia",
                    style: TextStyle(fontSize: 20, color: Colors.white))
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Next 7 days",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            for(var row in rows) buildRow(row["icon"], row["weekDay"], row["data"], row["temp"]),
            SizedBox(height: 150,)
          ],
        ),
      ),
    );
  }
}
