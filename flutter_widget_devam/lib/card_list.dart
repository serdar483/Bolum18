import 'package:flutter/material.dart';

class CardListKullanimi extends StatefulWidget {
  CardListKullanimi({Key? key}) : super(key: key);

  @override
  _CardListKullanimiState createState() => _CardListKullanimiState();
}

class _CardListKullanimiState extends State<CardListKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card ve List"),
      ),
      body: Center(
        //child: SingleChildKullanimi(),
        child: ListViewKullanimi(),
      ),
    );
  }

  ListView ListViewKullanimi() {
    return ListView(
      reverse: true,
      children: [
        Column(
          children: [
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
            tekListeElemani(),
          ],
        ),
        Text("Birden fazla widget türü tutuyor"),
        ElevatedButton(
          onPressed: () {},
          child: Text("Button"),
        ),
      ],
    );
  }

  SingleChildScrollView SingleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.red,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const ListTile(
            //leading: Icon(Icons.add),
            leading: CircleAvatar(
              child: Icon(Icons.add),
            ),
            title: Text("Başlık"),
            subtitle: Text("Alt Başlık"),
            trailing: Icon(Icons.real_estate_agent),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1,
          height: 10,
          indent: 20,
          endIndent: 60,
        )
      ],
    );
  }
}
