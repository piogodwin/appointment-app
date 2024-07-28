import 'package:flutter/material.dart';
import 'package:appoint_ment/booking.dart';

class List_fav extends StatelessWidget {
  final List<String> names = ['vishwa studio','Blue Trends','dr.ganesh','Cavery hospital','scissors talk','Trainer sakthi','conceltant hall','mini mall',];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NamesListScreen(names: names),
    );

  }
}

class NamesListScreen extends StatelessWidget {
  final List<String> names;

  NamesListScreen({required this.names});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAVORITE'),
        backgroundColor: Colors.teal,
          actions:<Widget>[
            IconButton(onPressed: (){}, icon: Icon(Icons.search),
            color:Colors.grey)
          ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>BookingCalendarDemoApp()
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
               decoration: BoxDecoration( color: Colors.teal.shade300,borderRadius:BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(radius:18,backgroundColor: Colors.lightGreenAccent,),
                   // SizedBox(width: 20,),
                    Text(
                      names[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),

                    IconButton(
                      iconSize: 35,
                      icon: const Icon(Icons.access_time_filled),
                      onPressed: (){Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) =>BookingCalendarDemoApp()));},
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

