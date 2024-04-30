import 'package:dars_3_uy_shi/windows/second_window.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainWindow extends StatelessWidget{
  // const MainWindow({super.key});

  List<Map<String, dynamic>> weather=[{"time": "12:00", "temp": "20","isSelected": true, },
    {"time": "14:00", "temp": "22","isSelected": false, },
    {"time": "16:00", "temp": "24","isSelected": false, },
    {"time": "18:00", "temp": "22","isSelected": false, },
    {"time": "20:00", "temp": "20","isSelected": false, },
    {"time": "22:00", "temp": "19","isSelected": false, },
  ];
  

  Widget buildContainer(String time, String temperature, bool isSelected){
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: isSelected? const Color.fromARGB(255, 41, 98, 255):Colors.white,),
      width: 60,
      height: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(time, style: TextStyle(color: isSelected? Colors.white: Colors.black),),
          Icon(Icons.cloud, color: isSelected? Colors.white: Colors.blue ),
          Text(temperature, style: TextStyle(color: isSelected? Colors.white: Colors.black, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        leading: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.tray_2,
                size: 30,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.ellipsis,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          )
        ],),
        body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                children: [SizedBox(width: 20,), Text("Bandung,", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),), Text("Indonesia",style: TextStyle(fontSize: 25),)],
              ),
           Container(
            height: 330,
            width: 380,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromARGB(255, 41, 98, 255),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
            ),
            child: const Column(
              children: [Icon(CupertinoIcons.cloud_sun, size: 70,color: Colors.white,),

              SizedBox(height: 10,),
              Text("Heavy Rain", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
              Text("Sunday, 02 Oct", style: TextStyle(fontSize: 15, color: Colors.white),),
              Text("24°", style: TextStyle(fontSize: 100, fontWeight: FontWeight.w700, color: Colors.white),),
              ],
            ),
           ), 
           const SizedBox(height: 3,),
           Row(
            children: [
              Container(
                width: 188,
                height: 100,
                color: const Color.fromARGB(255, 41, 98, 255),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(CupertinoIcons.wind, size: 30, color: Colors.white,),
                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("Wind", style: TextStyle(fontSize: 20, color: Colors.white),),
                        SizedBox(height: 15,),
                        Text("19,2 km/j", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 3),
              Container(
                width: 188,
                height: 100,
                color: const Color.fromARGB(255, 41, 98, 255),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(CupertinoIcons.thermometer, size: 30, color: Colors.white,),
                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("Feels Like", style: TextStyle(fontSize: 20, color: Colors.white),),
                        SizedBox(height: 15,),
                        Text("25℃", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
            ],
           ),
          
          const SizedBox(height: 3,),
          Row(
            children: [
              Container(
                width: 188,
                height: 100,
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),),
                color: Color.fromARGB(255, 41, 98, 255),),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.wb_sunny_outlined, size: 30, color: Colors.white,),
                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("Index UV", style: TextStyle(fontSize: 20, color: Colors.white),),
                        SizedBox(height: 15,),
                        Text("2", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 3,),
              Container(
                width: 188,
                height: 100,
                decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                color: Color.fromARGB(255, 41, 98, 255),),
                child: const Row(
                  children: [
                    SizedBox(width: 20,),
                    Icon(Icons.monitor_heart, size: 30, color: Colors.white,),
                    Column(
                      children: [
                        SizedBox(height: 15,),
                        Text("Pressure", style: TextStyle(fontSize: 20, color: Colors.white),),
                        SizedBox(height: 15,),
                        Text("1014 mbar", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text("Today", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondWindow()));}, icon: const Text("Next 7 days→", style: TextStyle(fontSize: 25),))],
          ),
          Scrollbar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [for(var info in weather) buildContainer(info["time"], info["temp"], info["isSelected"])],
            )
          )    
        ],
      ),
    ),
  );
  }
}