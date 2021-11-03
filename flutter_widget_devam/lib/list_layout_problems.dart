import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListLayoutProblemleri extends StatefulWidget {
  ListLayoutProblemleri({Key? key}) : super(key: key);

  @override
  _ListLayoutProblemleriState createState() => _ListLayoutProblemleriState();
}

class _ListLayoutProblemleriState extends State<ListLayoutProblemleri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Layout Problems"),
      ),
      body: Container(
        height: 200,
        decoration:
            BoxDecoration(border: Border.all(width: 4, color: Colors.red)),
        //child: yukseklik_list_deneme(),
        child: Row(
          children: [
            Text("Başladı"),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                //shrinkWrap: true,
                //scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.orange.shade100,
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.orange.shade200,
                  ),
                  Container(
                    height: 300,
                    width: 200,
                    color: Colors.orange.shade300,
                  ),
                ],
              ),
            ),
            Text("Bitti"),
          ],
        ),
      ),
    );
  }

  Column yukseklik_list_deneme() {
    return Column(
      children: [
        Text("Başladı"),
        Expanded(
          // Listview u column ile kullanırken expanded kullanılması gerekiyor ya da bir container içinde yerleştirilmeli
          child: ListView(
            //shrinkWrap: true,
            //scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 300,
                width: 100,
                color: Colors.orange.shade100,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.orange.shade200,
              ),
              Container(
                height: 300,
                width: 100,
                color: Colors.orange.shade300,
              ),
            ],
          ),
        ),
        Text("Bitti")
      ],
    );
  }
}
