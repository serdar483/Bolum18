import 'package:flutter/material.dart';

class GridviewKullanimi extends StatefulWidget {
  GridviewKullanimi({Key? key}) : super(key: key);

  @override
  _GridviewKullanimiState createState() => _GridviewKullanimiState();
}

class _GridviewKullanimiState extends State<GridviewKullanimi> {
  @override
  Widget build(BuildContext context) {
    //return GridviewCountDeneme();
    //return GridViewExtendDeneme();
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 2,
                style: BorderStyle.solid,
              ),
              /*
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),*/
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 5,
                  offset: Offset(10, 20),
                  spreadRadius: 0,
                ),
              ],
              shape: BoxShape.circle,
              /*
              boxShadow: [
                new BoxShadow(
                  color: Colors.red,
                  offset: new Offset(20.0, 10.0),
                )
              ],*/

              color: Colors.blue,
              gradient: const LinearGradient(
                colors: [Colors.yellow, Colors.blue],
                begin: Alignment.center,
                end: Alignment.topCenter,
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/venom.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Merhaba",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          onTap: () {
            debugPrint(index.toString());
          },
          onDoubleTap: () {
            debugPrint(index.toString() + " Çift Tıklanıldı ");
          },
          onLongPress: () {
            debugPrint(index.toString() + " Uzun basıldı ");
          },
          onHorizontalDragStart: (e) {
            debugPrint(index.toString() + " Uzun basıldı " + e.toString());
          },
        );
      },
    );
  }

  GridView GridViewExtendDeneme() {
    return GridView.extent(
      maxCrossAxisExtent:
          100, // alana göre eleman sayısının ayarlanmasını sağlıyor
      primary: false,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 40,
      mainAxisSpacing: 20,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  GridView GridviewCountDeneme() {
    return GridView.count(
      crossAxisCount: 3,
      primary: false,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 40,
      mainAxisSpacing: 20,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red,
          child: const Text(
            "Merhaba",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
