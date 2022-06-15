import 'package:course_online/presentation/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import '../../widgets/icon_with_label.dart';

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("Online Course",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          actions: <Widget>[
            Icon(Icons.access_alarm_rounded),
            SizedBox(
              height: 2,
              width: 2,
            ),
            Icon(Icons.access_alarm_sharp),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                color: Colors.amber,
                child: ElevatedButton(
                  onPressed: () {
                    //String title = "Halaman Dashboard";
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Dashboard(
                              title: "",
                              buttonText: "button",
                            )));
                  },
                  child: Text('Go to dashboard'),
                )),
            Container(
              height: 80,
              width: double.infinity,
              color: Color.fromARGB(255, 224, 224, 224),
              //margin: EdgeInsets.fromLTRB(10, 300, 10, 300),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconeWithLabel(
                      iconok: Icons.call,
                      text: "Call A",
                      warnatext: Colors.blue,
                      warna: Colors.amber,
                    ),
                    IconeWithLabel(
                      iconok: Icons.navigation,
                      text: "Navigation B",
                      warnatext: Colors.blue,
                      warna: Colors.amber,
                    ),
                    IconeWithLabel(
                      iconok: Icons.share,
                      text: "Share A",
                      warnatext: Colors.blue,
                      warna: Colors.amber,
                    ),
                  ]),
            ),
          ],
        ));
  }
}
