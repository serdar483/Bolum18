import 'dart:math';

import 'package:flutter/material.dart';

class CustomScrollViewKullanimi extends StatefulWidget {
  CustomScrollViewKullanimi({Key? key}) : super(key: key);

  @override
  _CustomScrollViewKullanimiState createState() =>
      _CustomScrollViewKullanimiState();
}

class _CustomScrollViewKullanimiState extends State<CustomScrollViewKullanimi> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(scrollDirection: Axis.vertical, slivers: <Widget>[
      SliverAppBar(
        //title: Text("Kaydırılabilir App Bar"),
        backgroundColor: Colors.red,
        expandedHeight: 200,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset("assets/images/robin.jpg"),
          title: Text("Robin"),
          centerTitle: false,
        ),
        floating:
            true, // bu durumda aşağıdan yukarı kaydırma işlemi yapılırken app bar ortaya çıkıyor
        pinned: true,
        snap: true,
      ),
      SliverPadding(padding: EdgeInsets.all(10)),
      SliverPadding(
        padding: EdgeInsets.all(10),
        sliver: SliverList(
          delegate: SliverChildListDelegate(sabitListeElemani),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.all(8.0),
        sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 10)),
      ),
      SliverPadding(
        padding: EdgeInsets.all(16),
        sliver: SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemani),
            itemExtent:
                200), //bu daha verimli ve itemextend ile genişlik belirtiliyor
      ),
      SliverPadding(
        padding: EdgeInsets.all(16),
        sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 10),
            itemExtent:
                100), //bu daha verimli ve itemextend ile genişlik belirtiliyor
      ),
      SliverPadding(
        padding: EdgeInsets.all(10),
        sliver: SliverGrid(
            delegate: SliverChildListDelegate(sabitListeElemani),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
      ),
      SliverPadding(
        padding: EdgeInsets.all(10),
        sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
      ),
      SliverPadding(
        padding: EdgeInsets.all(2),
        sliver: SliverGrid(
          delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
              childCount: 10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200),
        ),
      ),
      SliverGrid.count(
        crossAxisCount: 2,
        children: sabitListeElemani,
      ),
      /*
        SliverList(delegate: delegate),
        SliverFixedExtentList(),
        SliverGrid(),
        SliverGrid.count(crossAxisCount: crossAxisCount),
        SliverGrid.extent(maxCrossAxisExtent: maxCrossAxisExtent)*/
    ]);
  }

  List<Widget> get sabitListeElemani {
    return [
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        padding: EdgeInsets.all(2),
        child: const Text(
          "Sabit Liste Elemanı",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
    ];
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1}",
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
    );
  }

  rastgeleRenkUret() {
    return Color.fromARGB(sayiUret(), sayiUret(), sayiUret(), sayiUret());
  }

  sayiUret() {
    var sayi = Random.secure().nextInt(255);
    return sayi;
  }
}
